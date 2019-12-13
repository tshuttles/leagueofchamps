Rails.application.routes.draw do
  resources :weapons
  resources :inventory_items
  resources :champions
  resources :users

  root 'application#home'

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
