Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'

  get '/auto_login', to:"sessions#auto_login"

  namespace :api do
    namespace :v1 do
      resources :image_elements,  only: [:index, :show, :create, :update, :destroy]
      resources :actors, only: [:index, :show, :create, :update, :destroy]
      resources :agencies, only: [:index, :show, :create, :update, :destroy]
      resources :cities, only: [:index, :show, :create, :update, :destroy ]
      resources :users, only: [:index, :show,  :create]
      resources :likes, only: [:index,:show, :update, :create, :destroy]
      resources :comments, only: [:index,:show, :update, :create, :destroy]
      resources :favorites, only: [:index,:show, :update, :create, :destroy]

        end 
    end 
end
