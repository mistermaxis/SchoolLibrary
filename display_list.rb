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
    i = gets.chomp
    u = @people_list[i.to_i]
    puts "\nRentals:"
    u.rentals.each { |rental| puts "Date: #{rental.date}, Book: \"#{rental.book.title}\" by #{rental.book.author}" }
    puts
  end
end
