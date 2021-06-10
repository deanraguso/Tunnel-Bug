Rails.application.routes.draw do
  resources :tickets
  resources :projects
  devise_for :users
  root 'pages#index'
  get 'dashboard', to: "pages#dashboard"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
