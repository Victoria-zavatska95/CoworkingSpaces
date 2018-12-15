Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'
  resources :coworkingfilters
  resources :coworkingspaces
  resources :suggestionspaces
  resources :orderspaces
  get "/coworkingspaces/filtered_spaces/:city/:beginDate/:finishDate", to: "coworkingspaces#filtered_spaces", as: :filtered_spaces
  resources :userparams

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
