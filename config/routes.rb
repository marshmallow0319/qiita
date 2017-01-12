Rails.application.routes.draw do
  root 'articles#index'
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :articles

end
