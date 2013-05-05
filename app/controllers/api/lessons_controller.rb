class Api::LessonsController < ApplicationController

	def index
		lessons = Lesson.all
		render :json => Api::LessonsPresenter.new(lessons)
	end

	def show
		lesson = Lesson.find(params[:id])
		render :json => Api::LessonPresenter.new(lesson)
	end

	def create
		lesson = Lesson.create! do |instance|
			instance.title = params[:lesson][:title]
			instance.summary = params[:lesson][:summary]
		end
		render :json => Api::LessonPresenter.new(lesson), :status => :created
	end

	def update
		lesson = Lesson.find(params[:id])
		lesson.title = params[:lesson][:title]
		lesson.summary = params[:lesson][:summary]
		lesson.save!
		render :json => Api::LessonPresenter.new(lesson), :status => :accepted
	end

	def destroy
		lesson = Lesson.find(params[:id])
		lesson.destroy
		render :nothing => true, :status => :no_content

	end

end
