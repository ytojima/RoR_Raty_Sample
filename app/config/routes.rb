Rails.application.routes.draw do
  root to: 'homes#index'
  resources :posts do
    resources :reviews, only: %w[create destroy]
  end

  devise_for :users
end
