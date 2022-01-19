require_relative 'src/book.rb'

describe Book do 
   context "When testing the HelloWorld class" do 
      
      it "should say 'Hello World' when we call the say_hello method" do 
         book = Book.new 
         message = book.add_rental 
         expect(message).to eq "Hello World!"
      end
   end
end