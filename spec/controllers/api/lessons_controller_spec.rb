require 'spec_helper'

describe Api::LessonsController do
	let!(:lesson) { Lesson.make!(:title => "Foo Title") }

	# Note: This could be moved to spec_helper so that it could be used everywhere.
	def decoded_body
		# ActiveSupport::JSON.decode turns a json string back into a ruby hash.
		ActiveSupport::JSON.decode(response.body)
	end

	describe "GET to :index" do
		before do
			get :index
		end

		it "responds ok" do
			expect(response).to be_ok
		end

		it "returns lessons json" do
			expect(decoded_body["lessons"]).to be_present
		end
	end

	describe "GET to :show" do
		before do
			get :show, :id => lesson.id
		end

		it "responds ok" do
			expect(response).to be_ok
		end

		it "returns lesson hash" do
			expect(decoded_body["lesson"]).to be_present
		end
	end
end
