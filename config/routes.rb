Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :friends do
    resources :photos, only: [:new, :create]
    resources :friendships, only: [:new, :create]
  end
  resources :friendships, only: [] do
    resources :reviews, only: [:new, :create]
  end

  get "profile", to: "profile#show", as: :profile

  delete "delete_photo/:id", to: "photos#destroy", as: :destroy_photo

  get "delete_friendship/:id", to: "friendships#destroy", as: :destroy_friendship
  get "accept/:id", to: "friendships#accept", as: :accept
  get "decline/:id", to: "friendships#decline", as: :decline
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
