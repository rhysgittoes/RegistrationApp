class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

protected
   def logged_in?
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
   end

   helper_method :logged_in?


   def auth
      params[:id].to_i == session[:user_id] 
   end
    helper_method :auth

  def current_user
   @logged_in_user = User.find(id=session[:user_id])
  end
  helper_method :current_user

  def admin
    current_user.admin == true
  end

   helper_method :admin

  # def authorize
  #   redirect_to root_url unless logged_in?
  # end

end

