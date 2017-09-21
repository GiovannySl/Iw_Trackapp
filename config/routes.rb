Rails.application.routes.draw do
  get 'tracks/', to: 'tracks#index'
  get 'tracks/new'
  post 'tracks/', to: 'tracks#create'
  root to: "tracks#index"


  delete '/logout', to: 'sessions#destroy'
  get '/auth/:provider/callback', to: 'sessions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end