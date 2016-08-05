Rails.application.routes.draw do
  
  devise_for :users
  root 'statics#home'

  get 'about', to: 'statics#about'

  get 'users/:id', to: 'users#show'

end
