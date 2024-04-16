Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :artists, only: [:new, :create]
  end

  root to: 'arts#index'

  resources :arts do
      resources :comments, only: :create
    end
end
