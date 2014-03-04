TimeToRide::Application.routes.draw do
  root 'rides#index'

  resources :rides, only: [:new, :create]
end
