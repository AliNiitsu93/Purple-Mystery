Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :messages do 
  	resources :comments
  end
  root 'messages#index'
end
