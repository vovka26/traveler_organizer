Rails.application.routes.draw do

  resources :categories
  resources :activities
  resources :places
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
