require 'json'

module LoadList
  def load_books
    books = File.open("JSON/books.json").read
    books_data = JSON.parse(books, create_additions: true)
    @book_list = books_data
  end
  def load_people
    people = File.open("JSON/people.json").read
    people_data = JSON.parse(people, create_additions: true)
    people_data.each { |prs| @people_list.push(prs) }
  end
  def load_rentals
    rentals = File.open("JSON/rentals.json").read
    rentals_data = JSON.parse(rentals, create_additions: true)
    rentals_data.each { |rnt| @rental_list.push(rnt) }
  end
end