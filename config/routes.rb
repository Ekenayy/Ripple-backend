Rails.application.routes.draw do
  resources :user_task_challenges
  resources :task_challenges
  resources :tasks
  resources :user_challenges
  resources :challenges

  get '/fake', to: 'users#fake'
  get '/users/:id', to: 'users#show'
  post '/my_user_challenges', to: 'user_challenges#my_user_challenges'
  # post '/login', to: 'users#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
