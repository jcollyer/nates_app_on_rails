class Api::LessonPresenter

	attr_reader :lesson

	def initialize(lesson)
		@lesson = lesson
	end

	def as_json(options = {})
 		{
 			:lesson => {
 				:title => lesson.title,
 				:summary => lesson.summary
 			}
 		}
	end
end
