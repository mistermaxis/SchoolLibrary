require_relative 'person'
require_relative 'book'
require_relative 'rental'

p = Person.new 25, 'Argyle', parent_permission: false
b = Book.new 'My grandma', 'Shakespeare'
r = Rental.new '22-01-20', b, p

p.rentals.each { |r| puts r.book.author }