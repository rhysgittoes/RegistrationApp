class ChangeTableName < ActiveRecord::Migration[5.1]
  def change
    rename_table :orders_tables, :orders
  end
end
