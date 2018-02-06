Rails.application.routes.draw do
  get 'sessions/new'

  root 'users#home'
  resources :users

  get '/login',      to: "sessions#new"
  post '/login',     to: "sessions#create"
  delete '/logout',  to: "sessions#destroy"

  get '/sessions/skippy', to: "sessions#skippy"

end
