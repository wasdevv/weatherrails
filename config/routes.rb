Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  resources :home
  
  # Defines the root path route ("/")
  root "home#index"
end
