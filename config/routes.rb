Rails.application.routes.draw do
  
  get 'articles/show'
  root 'articles#index'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles
end
