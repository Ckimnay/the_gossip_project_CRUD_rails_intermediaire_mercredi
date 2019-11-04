Rails.application.routes.draw do
  get 'cities/show'
  root to: 'static#index'
  get '/home', to: 'static#index'
  get '/team', to: 'static#team'
  get '/contact', to: 'static#contact'
  get '/welcome/:first_name', to: 'dynamic#welcome'
  get 'user/:user_id', to: 'dynamic#user'
  resources :gossips
  resources :comments
  resources :profils
  resources :cities
  end

