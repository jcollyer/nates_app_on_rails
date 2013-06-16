class Api::BooksController < ApplicationController

  def index
    books = Book.all
    render :json => Api::BooksPresenter.new(books)
  end

  def show
    book = Book.find(params[:id])
    render :json => Api::BookPresenter.new(book)
  end

  def create
    book = Book.create! do |instance|
      instance.title = params[:book][:title]
      instance.summary = params[:book][:summary]
      instance.buylink = params[:book][:buylink]
      instance.context = params[:book][:context]
      instance.image = params[:book][:image]
    end
    # render :json => Api::BookPresenter.new(book), :status => :created
    redirect_to "/#/books"

  end

  def update
    book = Book.find(params[:id])
    book.title = params[:book][:title]
    book.summary = params[:book][:summary]
    book.buylink = params[:book][:buylink]
    book.image = params[:book][:image] if params[:book][:image].present?
    book.context = params[:book][:context]
    book.save!
    # render :json => Api::BookPresenter.new(book), :status => :accepted
    redirect_to "/#/books"
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    render :nothing => true, :status => :accepted
  end
end
