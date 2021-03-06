Rails.application.routes.draw do
  resources :users, except: [:new]
  root "articles#index"
  get "signup", to: "users#new"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete 'logout', to: "sessions#destroy"
  resources :articles do
    resources :comments
  end
end
