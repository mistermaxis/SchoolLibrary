require 'json'

module PersistList
  def persist_books
    File.write('JSON/books.json', JSON.dump(@book_list))
  end

  def persist_people
    File.write('JSON/people.json', JSON.dump(@people_list))
  end

  def persist_rentals
    File.write('JSON/rentals.json', JSON.dump(@rental_list))
  end
end
