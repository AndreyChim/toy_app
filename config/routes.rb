Rails.application.routes.draw do
  devise_for :admins
  #devise_for :admins, :skip => [:sessions]
  #as :admin do
  #  get 'signin' => 'devise/sessions#new', :as => :new_admin_session
  #  post 'signin' => 'devise/sessions#create', :as => :admin_session
  #  delete 'signout' => 'devise/sessions#destroy', :as => :destroy_admin_session
  #end
  root to: "users#index"
  #root "application#index"

  get 'home/index'
  #devise_for :users
  
  resources :microposts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end