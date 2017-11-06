Rails.application.routes.draw do
  get 'tasks/index'

  get 'tasks/show'

  get 'tasks/new'

  get 'tasks/edit'

  get 'tasks/destroy'

  root to: 'tasks#index'
    
  resources :tasks
end
