Rails.application.routes.draw do

  get 'home/index' => "home#index", as: :home

  get 'now' => "about#show", as: :about

  # Default to post's
  root :to => "home#index"

  # resources
  resources :users
  resources :posts do
    resources :comments
  end
  resources :tags, only: [:index, :show]

  # Session maagement
  get "/log-in" => "sessions#new"
  post "/log-in" => "sessions#create"
  get "/log-out" => "sessions#destroy", as: :log_out

end
