Rails.application.routes.draw do
  root 'top#index'
  get '/lisa', to: 'top#lisa'
  get '/juns/index', to: 'juns#index'
  resources :words
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
