class OrdersController < ApplicationController
  def index
  end

  def new
  end

def create
   @user = User.find_by_id(params[:id])
   @order = Order.new(order_params)
   @order.user_id = current_user.id
      if @order.save
         redirect_to root_url
         flash[:notice] = 'Thank you for placing an order!'
      else
       redirect_to root_url, flash[:notice] =  'There was a problem creating your order'
      end

  end
end


private
def order_params
   params.require(:order).permit(:country, :city, :postcode,:state, :street_name,:address_type,:building_name,:remarks,:number, :tracking_id,:order_status,:status, :device_id, :mac_id,)
end



t.bigint "user_id"
    t.string "order_status"
    t.string "tracking_id"
    t.string "status"
    t.string "device_id"
    t.string "mac_id"
    t.datetime "created_at", null: false
    t.string "country"
    t.string "city"
    t.string "state"
    t.string "postcode"
    t.string "street_name"
    t.string "address_type"
    t.string "building_name"
    t.string "remarks"
    t.string "number"