require_relative '../src/book'
require_relative '../src/student'
require_relative '../src/rental'

describe Rental do
  context 'When testing the Rental class' do
    it "should return a new Rental instance with the supplied date, book and person" do
      book = Book.new('Duok', 'M. Huur')
      student = Student.new('Sam', 123, 19, false)
      rental = Rental.new('12/23/34', book, student)
      expect(rental.date).to eq '12/23/34'
      expect(rental.book).to eq book
      expect(rental.person).to eq student
    end
  end
end