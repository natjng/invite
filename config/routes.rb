Rails.application.routes.draw do
  resources :event_users
  resources :events
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
