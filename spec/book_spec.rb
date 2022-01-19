require_relative '../src/book'

describe Book do
  context 'When testing the Book class' do
    it 'should return a new Book instance with the supplied title and author' do
      book = Book.new('The Lord', 'D. Trump')
      title = book.title
      author = book.author
      expect(title).to eq 'The Lord'
      expect(author).to eq 'D. Trump'
    end
  end
end
