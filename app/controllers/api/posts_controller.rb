class Api::PostController < ApplicationController

  def index
    posts = Post.all
    render :json => Api::PostsPresenter.new(posts)
  end

  def show
    post = Post.find(params[:id])
    render :json => Api::PostPresenter.new(post)
  end
end
