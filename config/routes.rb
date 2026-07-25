Rails.application.routes.draw do
  root 'words#index'
  get '/lisa', to: 'design#index'
  get '/checks/index', to: 'checks#index' ,as:'shiken'
  post '/checks/answer_check', to: 'checks#answer_check'
  resources :words
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
