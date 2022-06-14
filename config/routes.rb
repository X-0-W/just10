Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'
  get '/tagged', to: "listings#tagged", as: :tagged
  get '/dashboard/my_orders', to: 'pages#my_orders', as: 'my_orders'
  get '/dashboard/my_listings', to: 'pages#my_listings', as: 'my_listings'

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
    end
  end
end

# row 9-15 to below row 6
# add resources: orders, only: [:show] - not nested. Benefit vs nesting?

# patch '/orders/:id/accept', to: 'orders#accept', as :accept
# /orders/:id/accept
# /orders/:id/reject
