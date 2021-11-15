Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :artpieces do
    resources :rentals, only: [:new, :create]
    resources :wishes, only: [:new, :create]
  end

  resources :wishes, only: [:index, :destroy]

  resources :rentals, only: [:index, :edit, :update, :destroy] do
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]
end
