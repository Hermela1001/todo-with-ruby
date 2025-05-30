Rails.application.routes.draw do
  # Root path
  root "todos#index"

  # User signup routes
  get  'signup', to: 'users#new',    as: 'signup'   # form for new user
  post 'signup', to: 'users#create'               # create new user

  # User signin routes (sessions)
  get    'signin',  to: 'sessions#new',    as: 'signin'    # login form
  post   'signin',  to: 'sessions#create'                 # create session (login)
  delete 'signout', to: 'sessions#destroy', as: 'signout' # logout

  # Todos CRUD routes
  resources :todos

  # Users routes for user profile and edits (optional but useful)
  resources :users, only: [:show, :edit, :update, :destroy]

  # Sessions routes (mostly handled above but including for completeness)
  resources :sessions, only: [:new, :create, :destroy]
end
Rails.application.routes.draw do
  root "todos#index"

  get  "signup", to: "users#new",    as: "signup"
  post "signup", to: "users#create"
  get  "signin", to: "sessions#new", as: "signin"
  post "signin", to: "sessions#create"
  delete "signout", to: "sessions#destroy", as: "signout"

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :todos
end
