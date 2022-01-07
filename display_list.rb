module DisplayList
  def display_books
    puts
    @book_list.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
    puts
  end

  def display_people
    puts
    @people_list.each { |person| puts "Name: #{person.name}, ID: #{person.id} Age: #{person.age}" }
    puts
  end
end
