class LessonsController < ApplicationController
  def new
		@lesson = Lesson.new

		render :layout => nil
	end

	def edit
		@lesson = Lesson.find(params[:id])

		render :layout => nil
     #redirect_to :back

	end
end
