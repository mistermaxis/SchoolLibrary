require_relative 'person'
require_relative 'book'
require_relative 'display_list'

class App
  include DisplayList
  def initialize
    @book_list = [Book.new('yes', 'no'), Book.new('maybe', 'yes')]
    @people_list = []
    @options = {
      1 => self.display_books()
    }
  end
  attr_reader :options
end

def main
  school_library = App.new
  puts "Welcome to School Library App!\n\n"
  puts 'Please choose an option by enterin a number:'
  print "1 - List all books
2 - List all people
3 - Create a person
4 - Create a book
5 - Create a rental
6 - List all rentals for a given person id
7 - Exit\n"
  choice = gets.chomp
  school_library.display_books()
end

main()