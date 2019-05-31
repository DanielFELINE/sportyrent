Rails.application.routes.draw do  
  get 'filter/:query', to: 'articles#index', as: :specific_articles 

  get 'bookings/new'
  get 'bookings/create'
  root 'articles#index'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles do
    resources :bookings, only: [:new, :create, :destroy]
  end

  get '/users/dashboard', to: 'users#show', as: 'user'
  get '/users/profil', to: 'users#profile', as: 'profile'

end
