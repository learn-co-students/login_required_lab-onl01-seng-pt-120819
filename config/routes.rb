Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :sessions
   #resources :secrets, only: [:show]
   get '/secret' => 'secrets#show'
  resources :sessions, except: [:new, :create, :destroy]
  get '/show' => 'sessions#show'
  get '/login' => 'sessions#new', as: :new_sessions
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
end
