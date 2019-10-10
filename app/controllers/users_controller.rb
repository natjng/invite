class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end

    def create
        user = User.find_or_create_by(user_params)
        render json: user
    end

    private

    def user_params
        params.require(:user).permit(:email)
    end
end
