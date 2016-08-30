Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :tasks do
    post '/assignments', to: 'task_assignments#create', as: 'assignment'
    delete '/assignments', to: 'task_assignments#destroy'
  end
end
