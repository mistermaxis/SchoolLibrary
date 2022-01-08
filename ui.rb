require_relative 'display_list'
require_relative 'create_item'

class UI
  include DisplayList
  include CreateItem

  def initialize
    @book_list = []
    @people_list = []
    @input = ''
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
    handle_1
    handle_2
    handle_3
    handle_4
    handle_5
    handle_6
    invalid
  end

  def handle_1
    if @input == '1'
      display_books
    end
  end

  def handle_2
    if @input == '2'
      display_people
    end
  end

  def handle_3
    if @input == '3'
      create_person
    end
  end

  def handle_4
    if @input == '4'
      create_book
    end
  end

  def handle_5
    if @input == '5'
      create_rental
    end
  end

  def handle_6
    if @input == '6'
      display_rentals
    end
  end

  def invalid
    unless @input.to_i > 0 && @input.to_i <= 7
      puts 'Invalid choice'
    end
  end
end
