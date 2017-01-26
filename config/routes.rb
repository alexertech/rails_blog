Rails.application.routes.draw do
    resources :users
    resources :posts do
      resources :comments
    end
    root :to => "posts#index"

    get "/log-in" => "sessions#new"
    post "/log-in" => "sessions#create"
    get "/log-out" => "sessions#destroy", as: :log_out

#    resources :comments
end
