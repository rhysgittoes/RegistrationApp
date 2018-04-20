Rails.application.routes.draw do
  # get 'orders/index'

  # get 'orders/new'

  # get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
        get "/orders/search" => "orders#search", as: "orders_search"
      root to: 'pages#index'
      resources :orders
      resources :users
      resources :sessions


    

# get "/orders/search" => "orders#search"
      # Makes it look nice i think?
      get 'signup', to: 'users#new', as: 'signup'
      get 'login', to: 'sessions#new', as: 'login'
      # get 'logout', to: 'sessions#destroy', as: 'logout'

end
