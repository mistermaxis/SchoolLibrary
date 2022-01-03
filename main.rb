require_relative 'person'
require_relative 'student'

p = Person.new 'Me', false, 42

s = Student.new 'S', false, 15, 'Room 5'

puts p.can_use_services?

puts s.play_hooky
