require_relative 'person'
require_relative 'book'
require_relative 'teacher'

module CreateItem
  def create_person
    print "Do you want to create a student(1) or a teacher(2)? [Input the number]: "
    person_type = gets.chomp

    case person_type
    when '1'
      print "Age: "
      a = gets.chomp
      print "Name: "
      n = gets.chomp
      print "Has parent permission[Y/N]: "
      pp = gets.chomp
      p = pp == 'N' || pp == 'Y'
      @people_list.push(Student.new(a, @people_list.length, n, parent_permission: p))
      puts "Person created succesfully.\n"
    when '2'
      print "Age: "
      a = gets.chomp
      print "Name: "
      n = gets.chomp
      print "Specialization: "
      s = gets.chomp
      @people_list.push(Teacher.new(n, @people_list.length, true, a, s))
      puts 'Person created successfully.'
    else
      p 'Invalid Choice'
    end
  end
  def create_book
    print "Title: "
    t = gets.chomp
    print "Author: "
    a = gets.chomp
    @book_list.push(Book.new(t, a))
    puts "Book created successfully\n"
  end
end