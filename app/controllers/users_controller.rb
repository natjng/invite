class UsersController < ApplicationController
    def index
        users = User.all
        render json: UserSerializer.new(users)
    end

    def show
        user = User.find_by(id: params[:id])
        options = {}
        options[:include] = [:events]
        render json: UserSerializer.new(user, options)
    end

    def create
        user = User.find_or_create_by(user_params(:email))
        render json: UserSerializer.new(user)
    end

    def update
        user = User.find_by(id: params[:id])
        if user.update(user_params(:email, :name))
            render json: UserSerializer.new(user)
        else
            render json: {error: "Unable to update account."}
        end
    end

    private

    def user_params(*args)
        params.require(:user).permit(*args)
    end
end
