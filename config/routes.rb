Rails.application.routes.draw do
  get 'users/show'
  get 'tent/index'
  get 'tent/show'
  get 'tent/new'
  get 'tent/create'
  get 'tent/destroy'
  get 'tent/update'
  get 'tent/edit'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
