class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


   def logged_in?
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
   end
   helper_method :logged_in?

   def auth
      params[:id].to_i == session[:user_id] 
   end

  # def authorize
  #   redirect_to root_url unless logged_in?
  # end

end

