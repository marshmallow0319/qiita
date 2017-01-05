Rails.application.routes.draw do
  root 'articles#index'
  devise_for :users
  resources :articles ,only: [:index]

end
