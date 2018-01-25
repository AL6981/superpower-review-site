Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  resources :superpowers do
    resources :reviews, only: [:new, :create]
  end
  
  resources :reviews, only: [:edit, :update, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
