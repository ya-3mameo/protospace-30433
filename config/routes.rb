Rails.application.routes.draw do
  devise_for :users
  
  root to: 'prototypes#index'
  
  resources :prototypes do
    resources :comments, only: :create
    member do
      get 'comments'
    end
  end
  
  resources :users, only: :show do
    member do
      get 'users/show'
    end
  end
end