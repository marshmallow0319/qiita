Rails.application.routes.draw do
  root 'articles#index'

  devise_for :users, controllers: {
  omniauth_callbacks: 'users/omniauth_callbacks'
}

  resources :users, only: [:show, :edit, :update] do
    resources :likes, only: :index
  end
  resources :articles do
    resources :stocks, only: [ :create, :destroy]
    resources :likes, only: [:create, :destroy]
    resources :likers, only: :index
  end
  resources :stocks, only: :index

end
