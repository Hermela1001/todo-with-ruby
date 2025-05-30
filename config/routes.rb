Rails.application.routes.draw do
  root "todos#index"

  get  "signup",  to: "users#new"
  post "signup",  to: "users#create"

  get    "signin",  to: "sessions#new"
  post   "signin",  to: "sessions#create"
  delete "signout", to: "sessions#destroy"

  resources :todos do
    patch 'toggle_completed', on: :member
  end
end
