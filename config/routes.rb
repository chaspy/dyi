Rails.application.routes.draw do
  resources :users
  resources :events
  root 'welcome#index'
end
