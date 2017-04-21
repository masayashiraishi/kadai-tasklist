Rails.application.routes.draw do
  get 'toppages/index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root to: 'toppages#index'
  
  #root to: 'tasks#index'

  get 'login', to: 'tasks#new'
  post 'login', to: 'tasks#create'
  delete 'logout', to: 'tasks#destroy'

  get 'signup', to: 'tasks#new'
  resources :tasks, only: [:index, :show, :new, :create]
end
