class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(allowed_params)
    if @user.save
      redirect_to root_url, notice: 'Thank you for signing up!'
      session[:user_id] = @user.id
    else
      render :new
    end
  end


  def show   
   if auth
    @user = User.find_by_id(params[:id])
   else
    redirect_to root_url, notice: 'You don\'t have access to view that page'
    end
  end


  def edit

     if auth
    @user = User.find_by_id(params[:id])
   else
    redirect_to root_url, notice: 'You don\'t have access to view that page'
    end
  end

  def update
     if auth
    @user = User.find_by_id(params[:id])
    @user.assign_attributes(allowed_params) 
    
    # if @user.errors.any?
    #   flash[:notice] = "Sorry, there was an error updating your information. Please try again."
    #   redirect_to edit_user_path, :flash => { :notice => "Sorry, there was an error updating your information. Please try again." }
      # end
      if @user.save
          redirect_to user_path
      else
          flash[:notice] = "Sorry, there was an error updating your information. Please try again."
          redirect_to edit_user_path
      end
   else
    redirect_to root_url, notice: 'You don\'t have access to view that page'
    end
  end




private

  def allowed_params
  params.require(:user).permit(:email, :password, :password_confirmation,:first_name,:last_name,:country,:city,:postcode,:paypal,:isp,:bandwidth, :isp_bill, :verification_photo,:form_status)
  end
end



