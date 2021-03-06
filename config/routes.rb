Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#landing'
  get '/home', to: 'pages#home', as: 'home'
  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'
  get '/tagged', to: "listings#tagged", as: :tagged
  get '/dashboard/my_orders', to: 'pages#my_orders', as: 'my_orders'
  get '/dashboard/my_listings', to: 'pages#my_listings', as: 'my_listings'
  get '/dashboard/my_wishlists', to: 'pages#my_wishlists', as: 'my_wishlists'

  resources :users, only: [] do
    resources :chatrooms, only: [:create]
  end
  resources :listings, except: [:destroy] do
    resources :orders, only: [:index, :new, :create]
    patch :favorite, on: :member
  end
  resources :chatrooms, only: [:show] do
    resources :messages, only: :create
  end
  resources :orders, only: [:index] do
    resources :reviews, only: [:create]
  end
  resources :orders, only: [:show] do
    member do
      patch :accept
      patch :reject
      patch :complete
    end
  end
end
