Rails.application.routes.draw do

  root to: 'places#index'
  resources :categories, only: [:index, :show]
  resources :activities, only: [:index, :show]
  resources :places
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
