Rails.application.routes.draw do

  root to: 'toppages#index'

  get 'signup', to: 'users#new'
  resources :users, only: [:show, :create, :edit, :update, :destroy]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  post 'pokemons/random', to: 'pokemons#random'
  get 'pokemons/:id/score', to: 'pokemons#score_edit'
  post 'pokemons/:id/score', to: 'pokemons#score_update'
  get 'pokemons/:id/skill_new', to: 'pokemons#skill_new'
  post 'pokemons/:id/skill_create', to: 'pokemons#skill_create'
  get 'pokemons/:id/skill_edit', to: 'pokemons#skill_edit'
  post 'pokemons/:id/skill_update', to: 'pokemons#skill_update'
  resources :pokemons, only: [:index, :show, :new, :create]

  resources :stages, only: [:index, :show]

  resources :battle_items, only: [:index]

  resources :tools, only: [:index]

  resources :my_sets, only: [:index, :edit, :update]

  get 'offlines/score', to: 'offlines#score_edit'
  post 'offlines/score', to: 'offlines#score_update'
  get 'offlines', to: 'offlines#show'
  
end
