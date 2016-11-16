Rails.application.routes.draw do
  namespace :admin do
    resources :examples
resources :links
resources :topics

    root to: "examples#index"
  end

  resources :topics do
    resources :links
    resources :examples
  end
end
