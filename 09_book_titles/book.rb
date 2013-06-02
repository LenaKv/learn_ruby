class Book

  LITTLE_WORDS = %w(or if and the over behind to from of in a at an)

  def title= book_title
    @book = book_title
  end

  def title
    @book.capitalize!
    @book = @book.split(" ").each { |word| word.capitalize! unless LITTLE_WORDS.include? word }.join (" ")
  end

end
