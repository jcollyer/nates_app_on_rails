class Api::LessonsPresenter

	attr_reader :lessons

	def initialize(lessons)
		@lessons = lessons
	end

	def as_json(options = {})
		{
			:lessons => lessons_array
		}
	end

	def lessons_array
		lessons.map do |lesson|
			{
				:title => lesson.title,
				:summary => lesson.summary
			}
		end
	end
end
