require 'sidekiq/web'

Rails.application.routes.draw do
  resources :drugs
  resources :patients
  root to: 'home#index'
  get '/about', to: 'home#about'
  resources :posts
  devise_for :users

  authenticate :user do
    mount Sidekiq::Web => '/sidekiq'
  end
end
