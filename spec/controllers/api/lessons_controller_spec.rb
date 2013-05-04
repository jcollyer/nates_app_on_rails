require 'spec_helper'

describe Api::LessonsController do
	describe "GET to :index" do
		it "responds ok" do
			get :index
			expect(response).to be_ok
		end

		it "returns lessons json" do
			Lesson.make!(:title => "Foo Title")
			get :index
			# ActiveSupport::JSON.decode turns a json string back into a ruby hash.
			decoded_body = ActiveSupport::JSON.decode(response.body)
			expect(decoded_body["lessons"]).to be_present
		end
	end

	describe "GET to :show" do
		it "responds ok" do
			lesson = Lesson.make!(:title => "Foo Title")
			get :show, :id => lesson.id
			expect(response).to be_ok
		end

		it "returns lesson hash" do
			lesson = Lesson.make!(:title => "Foo Title")
			get :show, :id => lesson.id
			decoded_body = ActiveSupport::JSON.decode(response.body)
			expect(decoded_body["lesson"]).to be_present
		end
	end

end
