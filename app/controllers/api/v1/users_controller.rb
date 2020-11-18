class Api::V1::UsersController < ApplicationController
    before_action :find_user, only: [:show, :update, :destroy]

    def index 
        @users = User.all
        if @users 
        render json: UserSerializer.new(@users), status: :accepted
        else 
            render json:  { errors: @users.errors.full_messages }, status: :unprocessible_entity
        end 
               
    end 

    def show 
        if @user 
        render json: UserSerializer.new(@user)
        else 
            render json:  { errors: @user.errors.full_messages }, status: :unprocessible_entity
        end

    end   
    
    def update 
        @user.update(user_params)
        if @user.save 
            render json: UserSerializer.new(@user), status: :accepted
        else
            render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity

        end 
    end 

    
    def destroy
        @user.destroy
    end 


    def create 
        @user = User.new(user_params)
        # binding.pry
        if @user.save
           login!
            render json: { 
                status: :created,
                user:  UserSerializer.new(@user)
           
        }
        else
            render json: {  
                status: 500,
             errors: @user.errors.full_messages
            }
        end
    end 

    private

    def user_params
        params.require(:user).permit(:name, :password )
    end 

    def find_user
        @user = User.find(params[:id])

        render json: UserSerializer.new(@user)
    end 
end
