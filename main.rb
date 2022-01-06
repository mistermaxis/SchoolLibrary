require_relative 'person'
require_relative 'book'
require_relative 'rental'

p = Person.new 25, 'Argyle', parent_permission: false
b = Book.new 'My grandma', 'Shakespeare'
r = b.add_rental('20-12-2020', p)

puts r.date
p.rentals.each { |x| puts x.book.author }
