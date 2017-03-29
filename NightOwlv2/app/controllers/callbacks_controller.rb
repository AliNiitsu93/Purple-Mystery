class CallbacksController < Devise::OmniauthCallbacksController
    # def facebook
    #     @user = User.from_omniauth(request.env["omniauth.auth"])
    #     sign_in_and_redirect @user
    # end
    
    
    # def twitter
    #     @user = User.from_omniauth(request.env["omniauth.auth"])
    #     sign_in_and_redirect @user
    # end
    
    # def github
    #     @user = User.from_omniauth(request.env["omniauth.auth"])
    #     sign_in_and_redirect @user
    # end
    
    
    def all
        user = User.from_omniauth(request.env["omniauth.auth"])
        if user.persisted?
            flash.notice = "You are signed in successfully with #{user.provider}!"
            sign_in_and_redirect user
        else
            session["devise.user_attributes"] = user.attributes
            redirect_to new_user_registration_url
        end
        
    end
    alias_method :facebook, :all
    # alias_method :twitter, :all
    # alias_method :github, :all
    # alias_method :digitalocean, :all
end

