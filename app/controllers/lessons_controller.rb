class LessonsController < ApplicationController
  def index
    @lessons = Lesson.find(:all)
  end

  def new
		@lesson = Lesson.new

    render :layout => nil
  end

  def show
    @lessons = Lesson.all
  end

  def edit
    @lesson = Lesson.find(params[:id])

		render :layout => nil
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    render :nothing => true, :status => :no_content
  end

end
