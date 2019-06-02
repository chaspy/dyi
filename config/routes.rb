Rails.application.routes.draw do
  resources :events
  root 'welcome#index'
end
