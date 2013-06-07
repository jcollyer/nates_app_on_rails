class Api::BooksPresenter

  attr_reader :books

  def initialize(books)
    @book = book
  end

  def as_json(options = {})
    {
      :books => books_array
    }
  end

  def book_array
    books.map do |book|
      Api::BookPresenter.new(book).book_hash
    end
  end
end
