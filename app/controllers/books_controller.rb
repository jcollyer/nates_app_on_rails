class BooksController < ApplicationController
  def new
    @book = Book.new

    render :layout => nil
  end

  def edit
    @book = Book.find(params[:id])

    render :layout => nil
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    render :nothing => true, :status => :no_content
  end

end
