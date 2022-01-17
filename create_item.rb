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
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    @book_list.push(Book.new(title, author))
    puts 'Book created successfully\n'
  end

  def create_rental
    puts 'Select a book from the following list by number:'
    @book_list.each { |book| puts "#{@book_list.index(book)}\) Title: #{book.title}, Author: #{book.author}" }
    book_index = gets.chomp
    puts 'Select a person from the following list by number (not id):'
    @people_list.each { |i| puts "#{@people_list.index(i)}\) [#{i.class}] Name: #{i.name}, ID: #{i.id} Age: #{i.age}" }
    person_index = gets.chomp
    print 'Date: '
    date = gets.chomp
    Rental.new(date, @book_list[book_index.to_i], @people_list[person_index.to_i])
    puts 'Rental created successfully\n'
  end

  def create_student
    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp
    print 'Has parent permission[Y/N]: '
    has_parent_permission = gets.chomp
    parent_permission = has_parent_permission == 'N'
    @people_list.push(Student.new(name, @people_list.length, age, parent_permission: parent_permission))
    puts "Person created succesfully.\n"
  end

  def create_teacher
    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp
    @people_list.push(Teacher.new(name, @people_list.length, true, age, specialization))
    puts 'Person created successfully.'
  end
end
