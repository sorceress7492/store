Rails.application.routes.draw do
  resources :users, only: [ :new, :create ], path_names: { new: "signup" }
  resource :session
  resources :passwords, param: :token
  get "up" => "rails/health#show", as: :rails_health_check
  resources :products
  root "products#index"
end
