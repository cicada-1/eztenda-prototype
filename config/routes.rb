Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :venues do
    resources :offers, only: [:new, :create, :index, :show]
  end

  resources :offers, only: [:destroy]
  get "/offers", to: "offers#index_all"
  get "/offers/:id", to: "offers#show_limited", as: :offer_show
  
  resources :brands do
    resources :bids, only: [:index, :show, :new, :create]
  end

  resources :bids, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
