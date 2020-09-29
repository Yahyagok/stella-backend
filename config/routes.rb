Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :actors, only: [:index, :show, :create, :update]
      resources :agencies, only: [:index, :show, :create, :update ]
      resources :cities, only: [:index, :show, :create, :update ]
      resources :users, only: [:show, :update, :create]
      resources :likes, only: [:show, :update, :create]
      resources :comments, only: [:index,:show, :update, :create]
      resources :favorites, only: [:index,:show, :update, :create]

        end 
    end 
end
