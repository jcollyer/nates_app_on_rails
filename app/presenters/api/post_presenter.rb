class Api::PostPresenter

  attr_reader :post

  def initialize(post)
    @post = post
  end

  def as_json(options = {})
    {
      :post => {
        :title => post.title,
        :summary => post.summary,
        :context => post.context
      }
    }
  end
end
