Rails.application.routes.draw do

  get 'searchqueries/show'

  get 'searchqueries/index'

  resources :favorites
  resources :searches
  get 'sessions/create'
  resources :tweets
  get 'welcome/index'
  delete '/logout', to: 'sessions#destroy'
  # get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/:provider/callback', to: 'sessions#create'
  root 'searches#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
