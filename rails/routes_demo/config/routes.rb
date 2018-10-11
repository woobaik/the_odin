Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :zombies, except: [:destroy]
  resources :humans, only: [:index, :show]
end
