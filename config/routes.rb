Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'pages#index'
  resources :coworkingfilters
  resources :coworkingspaces
  resources :suggestionspaces
  resources :orderspaces
  get "/coworkingspaces/filtered_spaces/:id", to: "coworkingspaces#filtered_spaces", as: :filtered_spaces
  resources :userparams
  resources :comments

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
