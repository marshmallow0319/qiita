Rails.application.routes.draw do
  root 'articles#index'
  devise_for :users, controllers: {
  omniauth_callbacks: 'users/omniauth_callbacks'
}
  resources :users, only: [:show, :edit, :update]
  resources :articles, only: [:show, :new, :create, :destroy] do
    resources :stocks, only: [ :create, :destroy]
  end
  resources :stocks, only: :index

end
