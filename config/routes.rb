Rails.application.routes.draw do
  resources :reviews
  resources :items
  resources :item_types
  resources :franchises
  resources :auctions do
    resources :bids, except: %i[show delete]
  end
  resources :bids, only: %i[delete]
  devise_for :users
  resources :users do
    post 'users/:id', to: 'users#topup'
  end
  root to: 'auctions#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
