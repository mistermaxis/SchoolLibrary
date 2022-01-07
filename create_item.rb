module CreateItem
  def create_person
    print "Do you want to create a student(1) or a teacher(2)? [Input the number]:"
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
      @people_list.push(Person.new(a, @people_list.length, n, parent_permission: p))
      puts 'Person created succesfully.'
    when '2'
      p '2'
    else
      p 'Invalid Choice'
    end
  end
end