Rails.application.routes.draw do
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'signup', to: 'users#new'
  # post 'users', to: 'users' 
  resources :users, except: [:new] # el resources te crea todas las rutas menos la de new que ya la hemos creado
end
