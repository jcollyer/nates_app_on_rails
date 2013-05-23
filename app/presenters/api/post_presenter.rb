class Api::PostPresenter

  attr_reader :post

  def initialize(post)
    @post = post
  end

  def as_json(options = {})
    {
      :post => post_hash
    }
  end

  def post_hash
    {
      :id => post.id,
      :title => post.title,
      :summary => post.summary,
      :context => post.context
    }
  end
end
