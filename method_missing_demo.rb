class Book
    attr_accessor :title

    def method_missing(method_name, *arguments, &block)
        if(method_name.to_s.include?("test"))
            puts "Now we're in business."
        else 
            raise ArgumentError.new("This method does not exist.")
        end
    end
end

b = Book.new

b.test_method