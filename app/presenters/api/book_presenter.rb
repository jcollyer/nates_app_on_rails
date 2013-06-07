class Api::BookPresenter

  attr_reader :book

  def initialize(book)
    @book = book
  end

  def as_json(options = {})
    {
      :book => book_hash
    }
  end

  def book_hash
    {
      :id => book.id,
      :title => book.title,
      :summary => book.summary,
      :context => post.context,
      :image_thumb_url => post.image.url(:thumb),
      :image_medium_url => post.image.url(:medium),
      :image_large_url => post.image.url(:large)
    }
  end
end
