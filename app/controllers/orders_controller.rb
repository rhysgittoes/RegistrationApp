class OrdersController < ApplicationController

      def index
       @orders = Order.all

        # @orders = Order.where('order_status ILIKE ?', "%#{params[:order]}%")
        # orders =  Order.where('order_status ILIKE ?', "%#{params[:order]}%")
        # orders = orders.map do |ar|
        #   ar.order_status 
        #     end
        # render json: orders

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



      def update
        if auth || admin
          @order = Order.find_by_id(params[:id])
          @order.assign_attributes(order_params)
          @order.save
          redirect_to root_url, notice: 'Updated'
        else
          redirect_to root_url, notice: 'You don\'t have access to view that page'
        end
      end

      def search
        # if admin
        #       orders = if params[:order]
        #         Order.where('order_status ILIKE ?', "%#{params[:order]}%")
        #       else
        #         Order.all
        #       end
        # else
        #   redirect_to root_url, flash[:notice] =  'You don\'t have access'
        # end

        # @orders = Order.where('order_status ILIKE ?', "%#{params[:order]}%")
        @orders =  Order.where('order_status ILIKE ?', "%#{params[:order]}%")
        @orders = @orders.map do |ar|
          ar.order_status 
            end
        render json: @orders


      end

  




 end


private

def order_params
   params.require(:order).permit(:country, :city, :postcode,:state, :street_name,:address_type,:building_name,:remarks,:number, :tracking_id,:order_status,:status, :device_id, :mac_id, :order)
end




