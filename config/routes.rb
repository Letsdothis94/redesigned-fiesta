Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/vendors', to: 'vendor#index'
  get '/vendors/:id', to: 'vendor#show'
  
  get '/sweets', to: 'sweet#index'
  get '/sweets/:id', to: 'sweet#show'
  
  get '/sweetvendor', to: 'vendorsweet#index'
  post '/sweetvendor', to: 'vendorsweet#create'
  get '/sweetvendor/:id', to: 'vendorsweet#show'
  delete '/sweetvendor/:id', to: 'vendorsweet#destroy'











end
