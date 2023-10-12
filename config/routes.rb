Rails.application.routes.draw do
  resources :churches
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "churches#index"
end
