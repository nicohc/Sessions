Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'users#home'
  resources :users


  resources :moussaillons
  get '/moussaillons/index' , link_to: 'moussaillons#index'

end
