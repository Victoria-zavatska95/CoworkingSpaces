Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'
  resources :coworkingfilters
  resources :coworkingspaces
  resources :suggestionspaces
  resources :orderspaces
  get "/orderspaces/calculate/:coworkingspace_id", to: "orderspaces#calculate", as: :calculate
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
