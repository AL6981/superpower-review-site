Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  resources :superpowers do
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:edit, :update, :destroy]

  namespace :admin do
    resources :users
  end

  namespace :api do
    namespace :v1 do
      resources :superpowers, only: [:index, :show]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
