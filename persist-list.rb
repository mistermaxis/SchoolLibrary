require 'json'

module PersistList
  def persist_books
    File.write("books.json", JSON.dump(@book_list))
  end
  def persist_people
    File.write("people.json", JSON.dump(@people_list))
  end
  def persist_rentals
    File.write("rentals.json", JSON.dump(@rental_list))
  end
end