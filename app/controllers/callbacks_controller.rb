def CallbacksController < Devise::OmniauthCallbacksController
    def github
        @user = User.from_omniauth(request.env["ominauth.auth"])
        sign_in_and_redirect(@user)
    end
end