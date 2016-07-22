Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  get 'candidates/new'
  post 'candidates/create'
  
  root 'pages#home'
  
  get '/imobank', to: 'pages#imobank'
  get '/painel-de-controle', to: 'pages#control_panel'
  get '/cadastrar', to: 'users#new'
  post '/signup',  to: 'users#create'
  get '/instrucoes-pos-reserva', to: 'investments#instructions'
  
  resources :users
  resources :investments, only: [:new, :create]
  resources :projects, only: [:show, :index]
  resources :account_activations, only: [:edit, :show]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
 # get '/proposta-de-projeto', to: 'candidates#new'
  
end