Rails.application.routes.draw do
  root 'articles#index'
  devise_for :users, controllers: {
  omniauth_callbacks: 'users/omniauth_callbacks'
}

# devise_scope :user do
#   delete :sign_out, to: 'devise/sessions#destroy', as: :destroy_user_session
# end
  resources :users, only: [:show, :edit, :update]
  resources :articles

end
