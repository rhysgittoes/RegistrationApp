class CreateOrders < ActiveRecord::Migration[5.1]
  def change
   add_column :orders, :created_at, :datetime, null: false  
  end
end


