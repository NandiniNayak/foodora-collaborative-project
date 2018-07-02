Rails.application.routes.draw do
  devise_for :users

  get 'comment/index' => 'comment#index'

  root 'home#page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
