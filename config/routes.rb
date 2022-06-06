Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :listings, except: [:destroy] do
    resources :transactions, only: [:new, :create]
  end
  resources :chatrooms, only: [:show]
  resources :transactions, only: [:index] do
    member do
      patch :accept
      patch :reject
    end
    resources :reviews, only: [:new, :create]
  end
end

# patch '/transactions/:id/accept', to: 'transactions#accept', as :accept
# /transactions/:id/accept
# /transactions/:id/reject
