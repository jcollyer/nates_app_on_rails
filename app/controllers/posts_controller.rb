class PostsController < ApplicationController
  def new
    @post = Post.new

    render :layout => nil
  end

  def edit
    @post = Post.find(params[:id])

    render :layout => nil
  end
end
