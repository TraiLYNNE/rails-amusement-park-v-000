Rails.application.routes.draw do
  #root_path
  root 'static#home'


  #Resources
  resources :users
  resources :attractions
  resources :rides, only: [:create]

  #regular routes
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  post '/rides/new', to: 'rides#new'
  delete '/signout', to: 'sessions#destoy'

end
