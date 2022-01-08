require_relative 'display_list'
require_relative 'create_item'

class UI
  include DisplayList, CreateItem
  def initialize
    @book_list = [Book.new('yes', 'no'), Book.new('maybe', 'yes')]
    @people_list = [Person.new(11, 0, 'yes', parent_permission: false), Person.new(44, 1, 'maybe', parent_permission: true)]
    @input = ''
  end
  def display_ui
    while @input != '7' do
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
        case @input
        when '1'
          display_books
        when '2'
          display_people
        when '3'
          create_person
        when '4'
          create_book
        when '5'
          create_rental
        when '6'
          display_rentals
        when '7'
          break
        else
          print "Invalid choice\n"
        end
    end
  end
end