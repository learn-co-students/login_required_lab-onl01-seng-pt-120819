Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login' => 'sessions#new' 
  get '/secret' => 'secrets#show'
  post '/login' => 'sessions#create', as: 'signin'
  delete '/delete' => 'sessions#destroy'

end
