require_relative 'classroom'
require_relative 'student'

c = Classroom.new 'Math'
s = Student.new 'John', 10, c

puts s.classroom.label
