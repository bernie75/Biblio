Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  resources :reservations
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show]
  resources :books do
    resources :reservations, only: [:show, :new, :create]
  end
  namespace :user do
    resources :reservations, only: [:index]

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
