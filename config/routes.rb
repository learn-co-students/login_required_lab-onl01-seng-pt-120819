Rails.application.routes.draw do
  resources :secrets 
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get 'secrets/new'
  get 'secrets/show'
  get 'sessions/new'
  get 'secrets/login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
