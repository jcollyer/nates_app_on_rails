class Api::LessonsController < ApplicationController

	def index
		lessons = Lesson.all
		render :json => Api::LessonsPresenter.new(lessons)
	end

	def show
		lesson = Lesson.find(params[:id])
		render :json => Api::LessonPresenter.new(lesson)
	end
end
