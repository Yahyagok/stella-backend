Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :actors, only: [:index, :show, :create, :update, :destroy]
      resources :agencies, only: [:index, :show, :create, :update, :destroy]
      resources :cities, only: [:index, :show, :create, :update, :destroy ]
      resources :users, only: [:index, :show, :update, :create, :destroy]
      resources :likes, only: [:index,:show, :update, :create, :destroy]
      resources :comments, only: [:index,:show, :update, :create, :destroy]
      resources :favorites, only: [:index,:show, :update, :create, :destroy]

        end 
    end 
end
