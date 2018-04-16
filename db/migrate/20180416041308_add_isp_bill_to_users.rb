class AddIspBillToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :isp_bill, :string
  end
end
