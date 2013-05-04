App::Application.routes.draw do

# GET /api/lessons
# GET /api/lessons/:id
# POST /api/lessons/
# PUT /api/lessons/:id
# DELETE /api/lesson/:id

  namespace :api do
    resources :lessons, :except => [:new, :edit]
  end

  root to: 'application#index'
end
