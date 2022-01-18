require 'json'

module LoadList
  def load_books
    books = File.open("JSON/books.json").read
    books_data = JSON.parse(books, create_additions: true)
    @book_list = books_data
  end
  def load_people
    # File.write("JSON/people.json", JSON.parse(@people_list))
  end
  def load_rentals
    # File.write("JSON/rentals.json", JSON.parse(@rental_list))
  end
end