Rails.application.routes.draw do
  resources :menus
  resources :customers
  resources :restaurants
  resources :charges, only: [:new, :create]
  devise_for :users

  get 'comment/index' => 'comment#index'

  root 'home#page'
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
