Rails.application.routes.draw do
  resources :projects
  root to: 'application#index'
  get '/new', to: 'application#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
