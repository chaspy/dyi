Rails.application.routes.draw do
  resources :groups
  resources :users
  resources :events
  root 'events#index'
end
