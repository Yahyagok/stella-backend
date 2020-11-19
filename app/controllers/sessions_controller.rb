class SessionsController < ApplicationController
  # before_action  only: [:is_logged_in?, :destroy]

    def create
        @user = User.find_by(name: session_params[:name])
        if @user && @user.authenticate(session_params[:password])
          # binding.pry
          login!
          render json: {
            logged_in: true,
            user: @user
          }
        else
          render json: { 
            status: 401,
            errors: ['no such user', 'verify credentials and try again or signup']
          }
        end
      end


    def is_logged_in?
      # binding.pry
        if logged_in? && @current_user
          render json: {
            logged_in: true,
            user: @current_user
          }
        else
          render json: {
            logged_in: false,
            message: 'no such user'
          }
        end
      end

    def destroy
        logout!
        render json: {
          status: 200,
          logged_out: true
        }
      end

    def auto_login
      @user = User.find_by(id: request.headers["Authorization"])

      if @user 
      render json: @user
      else 
        render json: { errors: "There is no such user" }
      end
    end

    private

    def session_params
        params.require(:user).permit(:name, :password)
      end

end