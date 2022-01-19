# frozen_string_literal: true

require 'json'

module LoadList
  def load_books
    return unless File.exist?('JSON/books.json')

    books = File.read('JSON/books.json')
    books_data = JSON.parse(books, create_additions: true)
    @book_list = books_data
  end

  def load_people
    return unless File.exist?('JSON/people.json')

    people = File.read('JSON/people.json')
    people_data = JSON.parse(people, create_additions: true)
    people_data.each { |prs| @people_list.push(prs) }
  end

  def load_rentals
    return unless File.exist?('JSON/rentals.json')

    rentals = File.read('JSON/rentals.json')
    rentals_data = JSON.parse(rentals, create_additions: true)
    rentals_data.each { |rnt| @rental_list.push(rnt) }
  end
end
