Rails.application.routes.draw do
  root to: "topics#index"

  devise_for :accounts
  namespace :admin do
    resources :examples
    resources :links
    resources :topics
  end

  resources :topics do
    resources :links
    resources :examples
  end
end
