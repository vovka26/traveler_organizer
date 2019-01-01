Rails.application.routes.draw do

  root to: 'places#index'
  resources :categories
  resources :activities
  resources :places
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
