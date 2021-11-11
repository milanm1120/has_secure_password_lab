class UsersController < ApplicationController
    def new
        #nothing to do here
    end

    def create
        @user = User.create(user_params)
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end
end