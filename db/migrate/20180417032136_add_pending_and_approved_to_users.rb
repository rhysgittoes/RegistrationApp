class AddPendingAndApprovedToUsers < ActiveRecord::Migration[5.1]
  def change
   add_column :users, :pending, :string
   add_column :users, :approved, :boolean, default: false
  end
end
