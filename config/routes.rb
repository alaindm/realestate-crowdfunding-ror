Rails.application.routes.draw do
  root 'pages#home'
  get '/imobank', to: 'pages#imobank'
  get '/cadastrar', to: 'users#new'
  
end