Rails.application.routes.draw do

  # root to: 'shelters#index'
  resources :shelters
  resources :animals
  resources :adoption_processes
  resources :users

  get '/login', to: "sessions#login"
  post '/login', to: "sessions#process_login"
  get '/logout', to: "sessions#logout"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
