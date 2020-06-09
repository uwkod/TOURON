Rails.application.routes.draw do
  root to: "homes#index"
  resources :homes, only: [:index] do
    collection do
      get "search"
    end
  end

  resources :rooms, only:[:index]

  devise_for :users
  root to: "rooms#index"

  resources :talks, only: [:index, :new, :create]

  resources :mypages, only: [:index]

  resources :rooms, only: [:new, :create]
end
