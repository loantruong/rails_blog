Rails.application.routes.draw do
  resources :users
  root "articles#index"
  get 'signup', to: 'users#new'

  resources :articles do
    resources :comments
  end
end
