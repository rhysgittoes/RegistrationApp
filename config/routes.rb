Rails.application.routes.draw do
  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#index'

      resources :users
      resources :sessions

      # Makes it look nice i think?
      get 'signup', to: 'users#new', as: 'signup'
      get 'login', to: 'sessions#new', as: 'login'
      # get 'logout', to: 'sessions#destroy', as: 'logout'

end
