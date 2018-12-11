Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'
  resources :coworkingfilters
  resources :coworkingspaces
  resources :suggestionspaces
  resources :orderspaces

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
