Rails.application.routes.draw do
  get 'oauth_test/index'
  devise_for :users, controllers: {
    registrations: "users/registrations"
  }
  resources :groups
  resources :users
  resources :events
  root 'events#index'
end
