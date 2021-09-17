Rails.application.routes.draw do
  devise_for :admins
  root 'users#index'

  get 'home/index'
  #devise_for :users
  resources :microposts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end