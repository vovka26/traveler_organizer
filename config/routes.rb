Rails.application.routes.draw do

  root to: 'welcome#index'
  resources :categories
  resources :activities
  resources :places
  resources :welcome, only: [:index]
  resources :users, only: [:new, :create]
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
