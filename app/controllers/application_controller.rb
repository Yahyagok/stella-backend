class ApplicationController < ActionController::Base # that was API not Base and I changed , all the errors with cors issues are gone 
     skip_before_action :verify_authenticity_token
  

     helper_method :login!, :logged_in?, :current_user, :authorized_user?, :logout!, :already_liked?

  def login!
      session[:user_id] = @user.id
    end

  def logged_in?
      !!session[:user_id]
    end

  def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id] 
      

    end
  

  def authorized_user?
       @user == @current_user
     end

  def logout!
       session.clear
     end

     def already_liked?
      Like.where(user_id: params[:user_id], actor_id:
      params[:actor_id]).exists?
    end
end
