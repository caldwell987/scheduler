Rails.application.routes.draw do
  # resources :schedules
  # resources :members
  # resources :groups
  # devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do
      resources :sessions, only: [:index, :create, :destroy]
      resources :schedules
      resources :members
      resources :groups
    end
end
end
