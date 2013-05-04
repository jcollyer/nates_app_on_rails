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

	describe "POST to :create" do
		def create_lesson
			post :create, :lesson => {:title => "Foo Title", :summary => "Foo Summary"}
		end

		it "responds created" do
			create_lesson
			expect(response.status).to eq(201)
		end

		it "creates lesson" do
			expect { create_lesson }.to change { Lesson.count }.by(1)
		end

		it "returns lesson hash" do
			create_lesson
			expect(decoded_body["lesson"]).to be_present
		end
	end

	describe "PUT to :update" do
		before do
			put :update, {:id => lesson.id, :lesson => {:title => "HAHAHA"}}
		end

		it "responds accepted" do
			expect(response.status).to eq(202)
		end

		it "updates the lesson" do
			expect(lesson.reload.title).to eq("HAHAHA")
		end

		it "returns lesson hash" do
			expect(decoded_body["lesson"]).to be_present
		end
	end

	describe "DELETE to :destroy" do
		def destroy_lesson
			delete :destroy, :id => lesson.id
		end

		it "responds accepted" do
			destroy_lesson
			expect(response.status).to eq(202)
		end

		it "destroys lesson" do
			expect { destroy_lesson }.to change { Lesson.count }.by(-1)
		end
	end

end
