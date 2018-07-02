Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  resources :menus
  resources :customers
  resources :restaurants do
    resources :reviews, except: [:show, :index]
  end
  

  get 'comment/index' => 'comment#index'

  root 'home#page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
