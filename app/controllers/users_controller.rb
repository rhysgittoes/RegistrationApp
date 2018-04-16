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
    @user = User.find_by_id(params[:id])
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])
    @user.assign_attributes(allowed_params)
    if @user.save
        redirect_to user_path
    else
        flash[:notice] = "Sorry, there was an error updating your information. Please try again."
        redirect_to edit_user_path
    end
  end

private

  def allowed_params
  params.require(:user).permit(:email, :password, :password_confirmation,:first_name,:last_name,:country,:city,:postcode,:paypal,:isp,:bandwidth, :isp_bill, :verification_photo)
  end
end



