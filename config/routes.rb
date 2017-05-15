Rails.application.routes.draw do
  #root_path
  root 'static#home'


  #Resources
  resources :users
  resources :attractions

  #regular routes
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  post '/rides/create', to: 'rides#create'
  delete '/signout', to: 'sessions#destoy'

end
