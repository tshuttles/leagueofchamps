Rails.application.routes.draw do
  resources :users, except: [:new]
  resources :weapons
  resources :champions do 
    resources :weapons, only: [:index, :new, :show]
    resources :inventory_items, only: [:new] 
  end
  resources :inventory_items

  root 'application#home'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/auth/google_oauth2/callback' => 'sessions#omniauth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
