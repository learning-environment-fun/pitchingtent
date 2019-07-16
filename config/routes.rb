Rails.application.routes.draw do
  get 'users/show', to: 'users#show', as: 'user'
  get 'tents', to: 'tents#index', as: 'tents'
  get 'tents/show/:id', to: 'tents#show', as: 'tent'
  get 'tents/new', to: 'tents#new', as: 'new_tent'
  post 'tents/create', to: 'tents#create'
  delete 'tents/destroy', to: 'tents#destroy', as: 'destroy_tent'
  patch 'tents/update/:id', to: 'tents#update', as: 'update_tent'
  get 'tents/edit/:id', to: 'tents#edit', as: 'edit_tent'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
