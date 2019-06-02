Rails.application.routes.draw do
  get 'oauth_test/index'
  devise_for :users, controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  resources :groups
  resources :users
  resources :events
  root :to => 'oauth_test#index'
end
