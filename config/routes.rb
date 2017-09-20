Rails.application.routes.draw do
  get 'sessions/create'

  get 'welcome/index'
  get '/auth/:provider/callback', to: 'sessions#create'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
