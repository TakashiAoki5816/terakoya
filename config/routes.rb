Rails.application.routes.draw do
  devise_for :users
  root to: 'events#index'
  resources :events do
    resources :tickets, only: [:new, :create]
    collection do
      get 'search'
    end
  end
  resources :users, only: [:edit, :update]
end
