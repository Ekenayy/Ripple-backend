Rails.application.routes.draw do
  resources :reviews
  resources :user_task_challenges
  resources :task_challenges
  resources :tasks
  resources :user_challenges
  resources :challenges

  get '/fake', to: 'users#fake'
  get '/users/:id', to: 'users#show'
  patch 'users/:id', to: 'users#update'
  # get 'test_challenges/:user_id', to: 'user_challenges#test_challenges'
  get '/created_challenges/:user_id', to: 'challenges#created_challenges'
  get '/my_user_challenges/:user_id', to: 'user_challenges#my_user_challenges'
  get '/challenge_reviews/:challenge_id', to: 'reviews#challenge_reviews'
  post '/login', to: 'users#login'
  post 'users/create', to: 'users#create'
  # post '/created_challenges', to: 'challenges#created_challenges'
  # post '/my_user_challenges', to: 'user_challenges#my_user_challenges'
  # post '/login', to: 'users#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
