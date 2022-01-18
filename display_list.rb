module DisplayList
  def display_books
    puts
    @book_list.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
    puts
  end

  def display_people
    puts
    @people_list.each { |person| puts "[#{person.class}] Name: #{person.name}, ID: #{person.id} Age: #{person.age}" }
    puts
  end

  def display_rentals
    print "\nID of person: "
    id = gets.chomp
    person = @people_list[id.to_i]
    puts "\nRentals:"
    person.rentals.each { |rental| puts "Date: #{rental.date}, Book: \"#{rental.book.title}\" by #{rental.book.author}" }
    puts
  end
end
