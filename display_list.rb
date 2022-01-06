module DisplayList
  def display_books
    @book_list.each {|book| puts "Title: #{book.title}, Author: #{book.author}"}
  end
end