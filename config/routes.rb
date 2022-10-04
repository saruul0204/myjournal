Rails.application.routes.draw do
  resources :posts
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  get 'pages/home'
  get '/pages/about'
  get '/pages/contact'

  root to: 'pages#home'
end
