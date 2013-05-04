require "spec_helper"

describe Api::LessonPresenter do
	describe "#as_json" do
		it "returns lesson hash" do
			lesson = Lesson.make!(:title => "Some Title")
			presenter = Api::LessonPresenter.new(lesson)
			result = presenter.as_json

			expect(result[:lesson]).to be_present
			expect(result[:lesson][:title]).to eq("Some Title")
			expect(result[:lesson][:id]).to eq(lesson.id)
		end
	end
end
