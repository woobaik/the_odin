Rails.application.routes.draw do
  resources :posts
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  root 'posts#index'
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new'
  get 'sessions', to: 'sessions#new'
end
