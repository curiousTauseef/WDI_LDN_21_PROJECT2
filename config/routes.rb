Rails.application.routes.draw do
  
  resources :stations
  resources :posts
  devise_for :users
  root 'statics#home'

  get 'about', to: 'statics#about'

  get 'users/:id', to: 'users#show', as: "user"

end
