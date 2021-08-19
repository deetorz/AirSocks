Rails.application.routes.draw do
  namespace :dashboard do
    get 'bookings/index'
  end
  devise_for :users
  root to: 'pages#home'

  resources :socks, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end
  namespace :dashboard do
    resources :bookings, only: [:index]
  end
  resources :users, only: [:show]

  resources :bookings, only: [:update]
end
