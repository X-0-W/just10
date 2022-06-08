Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'
  resources :listings, except: [:destroy] do
    resources :orders, only: [:new, :create]
  end
  resources :chatrooms, only: [:show]
  resources :orders, only: [:index] do
    member do
      patch :accept
      patch :reject
    end
    resources :reviews, only: [:new, :create]
  end
end

# patch '/orders/:id/accept', to: 'orders#accept', as :accept
# /orders/:id/accept
# /orders/:id/reject
