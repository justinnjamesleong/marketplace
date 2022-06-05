Rails.application.routes.draw do
  resources :reviews
  resources :items do
    resources :auctions, only: %i[new create]
  end
  resources :item_types
  resources :franchises
  resources :auctions , except: %i[create] do
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
