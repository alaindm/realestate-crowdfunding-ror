Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  get 'candidates/new'
  post 'candidates/create'
  
  root 'pages#home'
  
  get '/imobank', to: 'pages#imobank'
  get '/cadastrar', to: 'users#new'
  
  post '/signup',  to: 'users#create'
  
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
 # get '/proposta-de-projeto', to: 'candidates#new'
  
end