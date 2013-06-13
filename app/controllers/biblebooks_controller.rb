class BiblebooksController < ApplicationController
  def new
    @biblebook = Biblebook.new

    render :layout => nil
  end

  def edit
    @biblebook = Biblebook.find(params[:id])

    render :layout => nil
  end

  def destroy
    @biblebook = Biblebook.find(params[:id])
    @biblebook.destroy
    render :nothing => true, :status => :no_content
  end

end
