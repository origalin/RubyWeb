Rails.application.routes.draw do

  get 'sessions/new'

  get '/home', to: 'static_pages#home'

  get '/signup', to: 'users#new'

  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  post '/upload' , to: 'images#store'

  post '/comment' ,to: 'comments#create'
  root 'static_pages#home'

  resources :images
  resources :users

end
