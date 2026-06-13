Rails.application.routes.draw do
  root 'words#index'
  get '/lisa', to: 'top#lisa'
  get '/checks/index', to: 'checks#index' ,as:'shiken'
  resources :words
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
