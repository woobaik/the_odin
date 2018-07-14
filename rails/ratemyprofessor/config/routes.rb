Rails.application.routes.draw do
  root 'lectures#index'
  resources :lectures


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
