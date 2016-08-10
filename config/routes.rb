Rails.application.routes.draw do
  
  resources :lines
  resources :stations
  resources :posts
  devise_for :users
  resources :conversations, only: [:index, :create] do
    resources :messages, only: [:index, :create]
  end
  root 'statics#home'
  
  get 'about', to: 'statics#about'

  get 'users/:id', to: 'users#show', as: "user"

end
