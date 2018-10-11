Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  with_options only: [:index, :show] do |list|
    list.resources :human
    list.resources :zomibe
    list.resources :medical_kit
  end
end
