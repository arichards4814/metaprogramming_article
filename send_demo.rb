class Book
    attr_accessor :title, :author, :length

    def assign_values(values)
    values.each_key do |k, v|
        self.send("#{k}=", values[k])

      # How send method would look a like
      # self.title = value[k]
    end
  end
end

book_info = {
    title: "Forrest Gump",
    author: "Winston Groom",
    length: 300
}

book = Book.new

# book.title = book_info[:title]
# book.author = book_info[:author]
# book.length = book_info[:length]
book.assign_values(book_info)

pp book