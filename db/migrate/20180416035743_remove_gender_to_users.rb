class RemoveGenderToUsers < ActiveRecord::Migration[5.1]
  def change
   remove_column :users, :gender
   remove_column :users, :birthday
   add_column :users, :paypal, :string
  end
end
