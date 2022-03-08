Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # debio hacerse con resources
  # resources :reports, only: [:new, :create, :show]
  get "reports/new", to: "reports#new"
  post "reports", to: "reports#create"
  # get  "reports/:random_url", to: "reports#show", as: :show_reports asi lo hice yo y el de abajo era el correcto
  get "reports/:id", to: "reports#show", as: :show_reports
end
