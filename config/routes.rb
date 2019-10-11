Rails.application.routes.draw do
  resources :rents
  get 'users/index'
  get 'users/about'
  get 'users/help'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#index'
end
