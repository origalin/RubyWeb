Rails.application.routes.draw do
  get 'sessions/new'

  get '/home', to: 'static_pages#home'

  get '/help', to: 'static_pages#help'

  get '/signup', to: 'users#new'

  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'
  root 'static_pages#home'

  resources :images
  resources :users

end
