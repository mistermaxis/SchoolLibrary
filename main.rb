require_relative 'person.rb'
require_relative 'student.rb'

p = Person.new "Me", false, 42

s = Student.new "S", false, 15, "Room 5"

puts p.can_use_services?

puts s.play_hooky
