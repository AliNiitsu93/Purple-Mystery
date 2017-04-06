Rails.application.routes.draw do
  get 'users/index'

  devise_for :users
  resources :users
  resources :messages do 
  	resources :comments
  end
  root 'messages#index'
end
