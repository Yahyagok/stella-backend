class Api::V1::UsersController < ApplicationController
    before_action :find_user, only: [:show, :update, :destroy]

    def index 
        users = User.all
        render json: UserSerializer.new(users)
    end 

    def show 

        render json: user
    end   
    
    def update 
        user.update(user_params)
        if user.save 
            render json: UserSerializer.new(user), status: :accepted
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessible_entity

        end 
    end 

    
    def destroy
        user.destroy
    end 


    def create 
        user = User.new(user_params)
        if user.save 
            render json: user, status: :accepted
        else
            render json: { errors: user.errors.full_messages}, status: :unprocessible_entity
        end
    end 

    private

    def user_params
        params.require(:user).permit(:name, :password_digest )
    end 

    def find_user
        user = User.find(params[:id])

        render json: user
    end 
end
