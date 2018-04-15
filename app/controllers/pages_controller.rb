class PagesController < ApplicationController
   def index
      @user = User.find(session[:user_id])
      if @current_user == nil 
         render "/pages/index"
      else 
         redirect_to user_path
      end
   end
end
