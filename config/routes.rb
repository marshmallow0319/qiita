Rails.application.routes.draw do
  root 'articles#index'
  devise_for :users
  resources :users, only: [:edit, :show, :update]
  resources :articles, only: [:index]

end
