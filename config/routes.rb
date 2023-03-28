Rails.application.routes.draw do
  resources :posts
  resources :reviews
  resources :users

  post "users/login", to: "sessions#create"
end
