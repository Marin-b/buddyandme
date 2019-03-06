Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :friends do
    resources :photos, only: [:new, :create]
    resources :friendships, only: [:new, :create]
  end
  get "profile", to: "profile#show", as: :profile
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
