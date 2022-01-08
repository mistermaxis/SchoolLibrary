require_relative 'person'
require_relative 'book'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'

module CreateItem
  def create_person
    print 'Do you want to create a student(1) or a teacher(2)? [Input the number]: '
    person_type = gets.chomp

    case person_type
    when '1'
      create_student
    when '2'
      create_teacher
    else
      p 'Invalid Choice'
    end
  end

  def create_book
    print 'Title: '
    t = gets.chomp
    print 'Author: '
    a = gets.chomp
    @book_list.push(Book.new(t, a))
    puts 'Book created successfully\n'
  end

  def create_rental
    puts 'Select a book from the following list by number:'
    @book_list.each { |book| puts "#{@book_list.index(book)}\) Title: #{book.title}, Author: #{book.author}" }
    b = gets.chomp
    puts 'Select a person from the following list by number (not id):'
    @people_list.each { |i| puts "#{@people_list.index(i)}\) [#{i.class}] Name: #{i.name}, ID: #{i.id} Age: #{i.age}" }
    r = gets.chomp
    print 'Date: '
    d = gets.chomp
    Rental.new(d, @book_list[b.to_i], @people_list[r.to_i])
    puts 'Rental created successfully\n'
  end

  def create_student
    print 'Age: '
    a = gets.chomp
    print 'Name: '
    n = gets.chomp
    print "Has parent permission[Y/N]: "
    pp = gets.chomp
    p = pp == 'N'
    @people_list.push(Student.new(n, @people_list.length, a, parent_permission: p))
    puts "Person created succesfully.\n"
  end

  def create_teacher
    print 'Age: '
    a = gets.chomp
    print 'Name: '
    n = gets.chomp
    print 'Specialization: '
    s = gets.chomp
    @people_list.push(Teacher.new(n, @people_list.length, true, a, s))
    puts 'Person created successfully.' 
  end
end