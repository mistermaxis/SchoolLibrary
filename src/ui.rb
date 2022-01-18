require_relative 'display_list'
require_relative 'create_item'
require_relative 'persist-list'
require_relative 'load_list'

class UI
  include DisplayList
  include PersistList
  include CreateItem
  include LoadList

  def initialize
    @book_list = []
    @people_list = []
    @rental_list = []
    @input = ''
    load_books
    load_people
    load_rentals
  end

  def display_ui
    while @input != '7'
      puts "Welcome to School Library App!\n\n"
      puts 'Please choose an option by enterin a number:'
      puts '1 - List all books'
      puts '2 - List all people'
      puts '3 - Create a person'
      puts '4 - Create a book'
      puts '5 - Create a rental'
      puts '6 - List all rentals from a given person id'
      puts '7 - Exit'
      @input = gets.chomp
      handle_input
    end
  end

  def handle_input
    handle1
    handle2
    handle3
    handle4
    handle5
    handle6
    handle7
    invalid
  end

  def handle1
    display_books if @input == '1'
  end

  def handle2
    display_people if @input == '2'
  end

  def handle3
    create_person if @input == '3'
  end

  def handle4
    create_book if @input == '4'
  end

  def handle5
    create_rental if @input == '5'
  end

  def handle6
    display_rentals if @input == '6'
  end

  def handle7
    if @input == '7'
      persist_books
      persist_people
      # persist_rentals
    end
  end

  def invalid
    puts 'Invalid choice' unless @input.to_i.positive? && @input.to_i <= 7
  end
end
