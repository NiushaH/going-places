Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/signup', to: 'users#new'
  # get '/signup', action: :new, controller: 'users'
  post '/users', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  
  get '/logout', to: 'sessions#destroy'

  # get '/sessions', to: 'users#show'

  # used 'rails routes' helper command to generate all RESTful routes
  resources :rides



  root 'application#home'
end
