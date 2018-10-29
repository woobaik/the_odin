Rails.application.routes.draw do
  root to: 'users#new'
  resources :users
  resources :events, only: [:index,:new, :create, :show]
  get 'log_in', to: 'sessions#new'
  post 'log_in', to: 'sessions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
