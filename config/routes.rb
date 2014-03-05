TimeToRide::Application.routes.draw do
  devise_for :users
  root 'rides#index'

  resources :rides, only: [:new, :create]
end
