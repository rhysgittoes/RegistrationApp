class AddAdressToOrders < ActiveRecord::Migration[5.1]
  def change
      add_column :orders, :country, :string
      add_column :orders, :city, :string
      add_column :orders, :state, :string
      add_column :orders, :postcode, :string
      add_column :orders, :street_name, :string
      add_column :orders, :address_type, :string
      add_column :orders, :building_name, :string
      add_column :orders, :remarks, :string
  end
end
