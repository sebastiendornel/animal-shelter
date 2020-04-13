Rails.application.routes.draw do
  resources :shelters
  resources :animals
  resources :adoption_processes
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
