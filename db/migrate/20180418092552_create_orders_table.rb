class CreateOrdersTable < ActiveRecord::Migration[5.1]
  def change
    create_table :orders_tables do |t|
      t.references :user
      t.string :order_status
      t.string :tracking_id
      t.string :status
      t.string :device_id
      t.string :mac_id
    end
  end
end
