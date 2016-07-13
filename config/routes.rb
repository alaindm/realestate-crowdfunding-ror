Rails.application.routes.draw do
  root 'pages#home'
  get '/imobank', to: 'pages#imobank'
  get '/cadastrar', to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :users
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end