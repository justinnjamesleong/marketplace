Rails.application.routes.draw do
  resources :reviews
  resources :items
  resources :itemtypes
  resources :franchises
  resources :auctions
  devise_for :users
  resources :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
