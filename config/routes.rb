Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :venues
  resources :brands
  resources :offers
  resources :bids, only: [:index, :show, :new, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
