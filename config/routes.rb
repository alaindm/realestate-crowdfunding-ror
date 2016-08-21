Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'

  get 'candidates/new'
  post 'candidates/create'
  get '/proposta-de-projeto', to: 'candidates#new'

  # resource :user, :controller => :users

  root 'pages#home'


  get '/sobre-a-plataforma', to: 'pages#about'
  get '/parceiros', to: 'pages#partners'
  get '/termos-do-servico', to: 'pages#terms_of_service'
  get '/politica-de-privacidade', to: 'pages#privacy_policy'
  get '/instrucao-cvm-400-2003', to: 'pages#cvm_400'
  get '/como-funciona-para-o-investidor', to: 'pages#how_it_works_investor'
  get '/como-funciona-para-o-construtor', to: 'pages#how_it_works_developer'
  get '/perguntas-frequentes-do-investidor', to: 'pages#faq_investor'
  get '/perguntas-frequentes-do-construtor', to: 'pages#faq_developer'
  get '/modelo-de-negocio', to: 'pages#business_model'
  get '/painel-de-controle', to: 'pages#control_panel'
  get '/transferencia-bancaria', to: 'pages#bank_transfer'

  get '/cadastrar', to: 'users#new'
  post '/signup',  to: 'users#create'

  get '/artigos', to: 'articles#index'

  get '/instrucoes-pos-reserva', to: 'investments#instructions'

  resources :articles, only: [:show, :index]
  resources :users
  resources :investments, only: [:new, :create]
  resources :projects, only: [:show, :index]
  resources :account_activations, only: [:edit, :show]
  resources :password_resets,     only: [:new, :create, :edit, :update]

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

end
