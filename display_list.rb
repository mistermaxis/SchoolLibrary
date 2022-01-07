module DisplayList
  def display_books
    @book_list.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
  end

  def display_people
    @people_list.each { |person| puts "Name: #{person.name}, ID: #{person.id} Age: #{person.age}" }
  end
end
