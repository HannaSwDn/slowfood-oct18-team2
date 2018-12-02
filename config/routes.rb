Rails.application.routes.draw do
  resources :products, only: [:index, :show]
  devise_for :users
  mount Cartify::Engine, at: '/'
  resources :products, only: [:show]
  root controller: :products, action: :index
end