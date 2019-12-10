Rails.application.routes.draw do
  resources :weapons
  resources :inventory_items
  resources :champions
  resources :users

  root 'application#home' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
