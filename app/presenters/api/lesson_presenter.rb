class Api::LessonPresenter

	attr_reader :lesson

	def initialize(lesson)
		@lesson = lesson
	end

	def as_json(options = {})
 		{
 			:lesson => lesson_hash
 		}
	end

	def lesson_hash
		{
			:id => lesson.id,
			:title => lesson.title,
			:summary => lesson.summary
		#	:image_url => lesson.image_url
		}
	end
end
