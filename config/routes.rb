Rails.application.routes.draw do
  resources :user_task_challenges
  resources :task_challenges
  resources :tasks
  resources :user_challenges
  resources :challenges
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
