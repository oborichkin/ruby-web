Rails.application.routes.draw do
  resources :themes
  resources :images
  resources :values
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  root 'main#index'
  get 'main/index'
  get 'main/help'
  get 'main/contacts'
  get 'main/about'

  match 'signup', to: 'users#new', via: 'get'
  match 'signin', to: 'sessions#new', via: 'get'
  match 'signout', to: 'sessions#destroy', via: 'get'
end
