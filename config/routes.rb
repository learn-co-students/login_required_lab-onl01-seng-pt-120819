Rails.application.routes.draw do
  # resources :secrets
  # resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'sessions#create'
  get '/login', to: 'sessions#new'
  get '/welcome', to: 'secrets#show'

  post '/', to: 'sessions#destroy'

end
