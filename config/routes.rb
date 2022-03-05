Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "reports/new", to: "reports#new"
  post "reports", to: "reports#create"
  get "reports/:random_url", to: "reports#show", as: :show_reports
end
