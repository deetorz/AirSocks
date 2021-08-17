Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :socks, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end
  namespace :dashboard do
    resources :bookings, only: [:index]
  end
  resources :users, only: [:show]

  resources :bookings, only: [:update]
end
