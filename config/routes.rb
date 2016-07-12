Rails.application.routes.draw do
  root 'pages#home'
  get '/imobank', to: 'pages#imobank'
  get '/cadastrar', to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :users
end