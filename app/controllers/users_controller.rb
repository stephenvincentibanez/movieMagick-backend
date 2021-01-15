class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end 

    def update
        user = User.find(params[:id])
        user.update(user_params)
        if user.save
            render json: user
        else
            render json: user.errors
        end 
    end

    def destroy
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end 

end
