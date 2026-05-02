Rails.application.routes.draw do
  root 'top#index'
  get '/lisa', to: 'top#lisa'
  resources :words
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
