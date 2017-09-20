Rails.application.routes.draw do
  get 'sessions/create'
  resources :tweets
  get 'welcome/index'
  delete '/logout', to: 'sessions#destroy'
  get '/auth/:provider/callback', to: 'sessions#create'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
