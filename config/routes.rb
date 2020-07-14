Rails.application.routes.draw do
  devise_for :users
  root to: 'events#index'
  resources :events do
    resources :tickets, only: [:new, :create]
  end
  resources :users, only: [:edit, :update]
end
