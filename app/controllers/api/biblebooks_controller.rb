class Api::BiblebooksController < ApplicationController

  def index
    biblebooks = Biblebook.all
    # biblebooks = Biblebook.find(:all, :order => 'name DESC')
    render :json => Api::BiblebooksPresenter.new(biblebooks)
  end

  def show
    biblebook = Biblebook.find(params[:id])
    render :json => Api::BiblebookPresenter.new(biblebook)
  end

  def create
    biblebook = Biblebook.create! do |instance|
      instance.name = params[:biblebook][:name]
      instance.image = params[:biblebook][:image]
    end
    # render :json => Api::BiblebookPresenter.new(biblebook), :status => :created
    redirect_to "/#/biblebooks"

  end

  def update
    biblebook = Biblebook.find(params[:id])
    biblebook.name = params[:biblebook][:name]
    biblebook.image = params[:biblebook][:image] if params[:biblebook][:image].present?
    biblebook.save!
    # render :json => Api::BiblebookPresenter.new(biblebook), :status => :accepted
    redirect_to "/#/biblebooks"
  end

  def destroy
    biblebook = Biblebook.find(params[:id])
    biblebook.destroy
    render :nothing => true, :status => :accepted
  end
end
