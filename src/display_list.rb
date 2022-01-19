# frozen_string_literal: true

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
    puts "\nRentals:"
    @rental_list.each do |r|
      if r.person.id == id.to_i
        print "Date: #{r.date} "
        print "Book: \"#{r.book.title}\" by #{r.book.author}\n\n"
      end
    end
  end
end
