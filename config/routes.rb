Rails.application.routes.draw do
  get 'items_controller/create'

  get 'welcome/index'

  get 'welcome/about'

  devise_for :users

  authenticated :user do
    root 'users#show', as: :authenticated_root
  end

  root to: 'home#index'

  resources :users do
    resources :items, only: [:create]
  end

end
