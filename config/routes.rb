Rails.application.routes.draw do
  root to: "home#show"

  resources :games, only: [:index, :new, :create]

  resources :championships, only: [:index, :new, :create, :show] do
    resources :matches, only: [:new, :create, :show]
  end
end
