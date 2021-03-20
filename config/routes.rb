Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :venues do
    resources :offers
  end
  resources :brands do
    resources :bids, only: [:index, :show, :new, :create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
