Rails.application.routes.draw do
  devise_for :users

  resources :superpowers, only: [] do
    resources :reviews, only: [:new, :create, :edit, :update, :destroy]
  end

  namespace :admin do
    resources :users
    resources :superpowers
  end

  namespace :api do
    namespace :v1 do
      resources :superpowers, only: [:index, :show]
    end
  end

  root 'homes#index'
  get "*path", to: "homes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end