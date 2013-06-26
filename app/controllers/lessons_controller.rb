class LessonsController < ApplicationController
  def new
		@lesson = Lesson.new
    render :layout => nil
  end

  def show
    @lessons = Lesson.all
  end

  def edit
    @lesson = Lesson.find(params[:id])

    @biblebook = Biblebook.all
		render :layout => nil
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    render :nothing => true, :status => :no_content
  end

end
