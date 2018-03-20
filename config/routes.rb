Rails.application.routes.draw do
  root 'home#index'

  resources :users

  namespace :v1 do
    resources :users
  end
end
