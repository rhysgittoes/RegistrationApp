class ChangeColumnNameUsers < ActiveRecord::Migration[5.1]
  def change
   rename_column :users, :pending, :form_status

  end
end
