Rails.application.routes.draw do
  get 'photos/new'
  get 'photos/create'
  devise_for :users
  root to: 'pages#home'
  resources :friends do
    resources :photos, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
