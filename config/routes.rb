Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :rents
  resources :matches
  resources :likes
  resources :dislikes
  resources :interactions
  devise_for :users
  get 'profiles/index', to: 'profiles#index'
  get 'profiles/about', to: 'profiles#about'
  get 'profiles/help', to: 'profiles#help'
  get 'profiles/show/:id', to: 'profiles#show', as: 'profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'profiles#index'
end
