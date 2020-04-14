Rails.application.routes.draw do

  # root to: 'shelters#index'
  resources :shelters
  resources :animals do
    resources :adoption_processes
  end

  resources :users

  # get '/adoption_process/new', to: 'adoption_processes#new', as: '/adoption_form'
  # get '/animals/:id/adopt' to 
  # get '/snacks/:id', to: "snacks#show", as: "snack"

  get '/login', to: "sessions#login"
  post '/login', to: "sessions#process_login"
  get '/logout', to: "sessions#logout"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
