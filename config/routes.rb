Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :reports, only: [:new, :create, :show]
  get "reports/new", to: "reports#new"
  post "reports", to: "reports#create"
  get "reports/:random_url", to: "reports#show", as: :show_reports
end
