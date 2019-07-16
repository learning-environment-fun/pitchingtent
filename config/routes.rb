Rails.application.routes.draw do
  devise_for :users
  get 'dashboard', to: 'users#show', as: 'user'
  resources :tents
  root to: 'tents#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
