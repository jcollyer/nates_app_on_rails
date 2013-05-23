class Api::PostController < ApplicationController

  def index
    posts = Post.all
    render :json => Api::PostsPresenter.new(posts)
  end

  def show
    post = Post.find(params[:id])
    render :json => Api::PostPresenter.new(post)
  end

  def create
    post = Post.create! do |instance|
      instance.title = params[:post][:title]
      instance.summary = params[:post][:summary]
    end
    render :json => Api::PostPresenter.new(post), :status => :created
  end

  def update
    post = Post.find(params[:id])
    post.title = params[:post][:title]
    post.summary = params[:post][:summary]
    post.save!
    render :json => Api::PostPresenter.new(post), :status => :accepted
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    render :nothing => true, :status => :accepted
  end
end
