Rails.application.routes.draw do
  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'users#home'
  resources :users

  get '/login',      to: "sessions#new"
  post '/login',     to: "sessions#create"
  delete '/logout',  to: "sessions#destroy"



  resources :moussaillons
  get '/moussaillons/index' , link_to: 'moussaillons#index'

end
