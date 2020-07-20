Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  root to: 'events#index'
  resources :events do
    resources :tickets, only: [:new, :create]
    collection do
      get 'search'
    end
  end
  resources :users, only: [:edit, :update]
end
