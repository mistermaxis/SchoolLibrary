require_relative 'person'
require_relative 'book'
require_relative 'rental'

p = Person.new 25, parent_permission: false, "Argyle"
b = Book.new 'My grandma', 'Shakespeare'
r = Rental.new '22-01-20', b, p

puts r.date
p.rentals.each { |x| puts x.book.author }
