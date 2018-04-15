class PagesController < ApplicationController
   def index
      if logged_in?
         @user = User.find(session[:user_id])
      end
      
      if @current_user == nil 
         render "/pages/index"
      else 
         redirect_to user_path
      end
   end

end
