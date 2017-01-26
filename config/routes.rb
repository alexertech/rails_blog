Rails.application.routes.draw do

  # Default to post's
  root :to => "posts#index"

  # resources
  resources :users
  resources :posts do
    resources :comments
  end

  # Session maagement
  get "/log-in" => "sessions#new"
  post "/log-in" => "sessions#create"
  get "/log-out" => "sessions#destroy", as: :log_out

end
