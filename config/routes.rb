Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :venues do
    resources :offers, only: [:new, :create, :index]
  end

  resources :offers, only: [:show, :destroy] do
    resources :bids, only: [:new, :create]
  end
  get "/offers", to: "offers#index_all"
  
  resources :brands do
    resources :bids, only: [:index, :show]
  end

  resources :bids, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
