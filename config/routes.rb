Rails.application.routes.draw do
  
  root 'application#home'
  
  
  resources :rides
  resources :attractions
  resources :users
 

  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'


  get '/signout', to: 'sessions#destroy'
end
