Rails.application.routes.draw do

  root to: 'toppages#index'

  get 'signup', to: 'users#new'
  resources :users, only: [:show, :create, :edit, :update, :destroy]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  post 'pokemons/random', to: 'pokemons#random'
  resources :pokemons, only: [:index, :show]

  resources :stages, only: [:index, :show]

  resources :battle_items, only: [:index, :show]
  
end
