class AddHouseNumberToOrders2 < ActiveRecord::Migration[5.1]
  def change
      add_column :orders, :number, :string
  end
end
