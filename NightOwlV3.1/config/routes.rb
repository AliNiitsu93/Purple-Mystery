Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :messages do 
  	resources :comments
  end
  root 'messages#index'
  get 'about/index'
end
