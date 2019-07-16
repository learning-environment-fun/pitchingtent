Rails.application.routes.draw do
  get 'dashboard', to: 'users#show', as: 'user'
  resources :tents
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
