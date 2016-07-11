Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/help'

  root 'application#hello'
end