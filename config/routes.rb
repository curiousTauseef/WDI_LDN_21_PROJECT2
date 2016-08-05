Rails.application.routes.draw do
  
  root 'statics#home'

  get 'users/:id', to: 'users#show'

end
