Rails.application.routes.draw do
  root to: "home#show"
  resources :championships, only: [:index, :new, :create, :show] do
    resources :matches, only: [:new, :create, :show]
  end
end
