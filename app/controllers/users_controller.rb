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
   if auth || admin
    @user = User.find_by_id(params[:id])
   else
    redirect_to root_url, notice: 'You don\'t have access to view that page'
    end

    if admin
        @users = User.all
    else
    end

  end


  def edit
    @user = User.find_by_id(params[:id])
    if @user.form_status == "pending" 
       redirect_to root_url, notice: "You cannot edit a submitted registration form"
    else
    end

    if @user.form_status == "approved" 
       redirect_to root_url, notice: "Your registration is already complete"
    else
    end

    if auth || admin
    else
      redirect_to root_url, notice: 'You don\'t have access to view that page'
    end
  end



  def update
   
    if auth || admin
        @user = User.find_by_id(params[:id])
    else
      redirect_to root_url, notice: 'You don\'t have access to view that page'
    end


    if admin
      @user.assign_attributes(allowed_params)
      @user.save(validate: false)
      redirect_to root_url
      
    else

      if @user.form_status == nil 
        @user.assign_attributes(allowed_params)
      else
        redirect_to root_url, notice: "You cannot edit a submitted registration form"  
      end

      if @user.save
        redirect_to root_url
      else
        flash[:notice] = "Sorry, there was an error updating your information. Please try again."
          redirect_to edit_user_path
      end
    end
  end




private

  def allowed_params
  params.require(:user).permit(:email, :password, :password_confirmation,:first_name,:last_name,:country,:city,:postcode,:paypal,:isp,:bandwidth, :isp_bill, :verification_photo,:form_status)
  end

end



# if @user.errors.any?
#   flash[:notice] = "Sorry, there was an error updating your information. Please try again."
#   redirect_to edit_user_path, :flash => { :notice => "Sorry, there was an error updating your information. Please try again." }
  # end
