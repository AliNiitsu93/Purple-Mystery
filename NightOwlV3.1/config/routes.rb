Rails.application.routes.draw do
# <<<<<<< JanojBranch
# #   get 'users/index'

# #   devise_for :users
# #   resources :users
# =======



# >>>>>>> master
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :messages do 
  	resources :comments
  end
  root 'messages#index'
  get 'about/index'
end
