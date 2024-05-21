Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
end
