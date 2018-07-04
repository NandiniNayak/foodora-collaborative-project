Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  resources :menus
  resources :customers
  resources :restaurants do
    resources :reviews, except: [:show, :index]
  end
  resources :charges, only: [:new, :create]

  get 'comment/index' => 'comment#index'

  root 'home#page'
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
