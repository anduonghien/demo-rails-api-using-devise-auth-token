Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :posts, only: [:index, :show] do
    resources :comments, only: [:index, :show]
  end

  resources :comments, only: [:index, :show]
end
