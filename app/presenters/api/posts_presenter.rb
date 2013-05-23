class Api::PostsPresenter

  attr_reader :posts

  def initialize(posts)
    @posts = posts
  end

  def as_json(options ={})
    {
      :posts => posts_array
    }
  end

  def posts_array
    posts.map do |post|
      {
        :title => post.title,
        :summary => post.summary,
        :context => post.context
      }
    end
  end
end
