Rails.application.routes.draw do
  
  devise_for :users

  resources :products, only: [:index]

  root controller: :products, action: :index

end
