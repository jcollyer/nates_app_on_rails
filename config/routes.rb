App::Application.routes.draw do

# GET /api/lessons
# GET /api/lessons/:id
# POST /api/lessons/
# PUT /api/lessons/:id
# DELETE /api/lesson/:id


  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  resources :users
  resources :sessions
  get "static/admin"

  namespace :api do
    resources :lessons, :except => [:new, :edit]
    resources :posts, :except => [:new, :edit]
    resources :books, :except => [:new, :edit]
    resources :biblebooks, :except => [:new, :edit]
  end

  resources :lessons, :only => [:new, :edit, :show]
  resources :posts, :only => [:new, :edit]
  resources :books, :only => [:new, :edit]
  resources :biblebooks, :only => [:new, :edit, :show]
  # get "posts/new"


  root to: 'application#index'
end
