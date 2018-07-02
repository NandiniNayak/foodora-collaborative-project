Rails.application.routes.draw do
  resources :menus
  resources :customers
  resources :restaurants
  devise_for :users
  root 'home#page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
