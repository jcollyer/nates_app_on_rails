class Api::LessonsController < ApplicationController

	def index
		lessons = Lesson.all
		# lessons = Lesson.find(:all, :order => 'title.to_i DESC')
		# lessons = Lesson.all.sort_by { |a| +(a.title.to_i) }
		render :json => Api::LessonsPresenter.new(lessons)
	end

	def show
		lesson = Lesson.find(params[:id])
		render :json => Api::LessonPresenter.new(lesson)
	end

	def create
		lesson = Lesson.create! do |instance|
			instance.biblebook_id = params[:lesson][:biblebook_id]
			instance.title = params[:lesson][:title]
			instance.summary = params[:lesson][:summary]
			instance.position = params[:lesson][:position]
			instance.image = params[:lesson][:image]
			instance.refurl = params[:lesson][:refurl]
			instance.mp3 = params[:lesson][:mp3]
		end
		# render :json => Api::LessonPresenter.new(lesson), :status => :created
		redirect_to "/#/lessons"
	end

	def update
		lesson = Lesson.find(params[:id])
	  lesson.biblebook_id = params[:lesson][:biblebook_id]
		lesson.title = params[:lesson][:title]
		lesson.summary = params[:lesson][:summary]
		lesson.position = params[:lesson][:position]
	  lesson.image = params[:lesson][:image] if params[:lesson][:image].present?
	  lesson.mp3 = params[:lesson][:mp3] if params[:lesson][:mp3].present?
		lesson.refurl = params[:lesson][:refurl]
		lesson.save!
		# render :json => Api::LessonPresenter.new(lesson), :status => :accepted
		redirect_to "/#/lessons"
	end

	def destroy
		lesson = Lesson.find(params[:id])
		lesson.destroy
		render :nothing => true, :status => :no_content

	end

end
