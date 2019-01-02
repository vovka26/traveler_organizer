Rails.application.routes.draw do

  root to: 'welcome#index'
  resources :categories
  resources :activities
  resources :places
  resources :welcome, only: [:index,:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'places', to: 'static#places'


end
