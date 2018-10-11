Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :human
  constraints subdomain: 'api' do
    resources :zombies
    resources :medical
  end
end
