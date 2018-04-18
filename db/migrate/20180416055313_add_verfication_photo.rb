class AddVerficationPhoto < ActiveRecord::Migration[5.1]
  def change
       add_column :users, :verification_photo, :string
  end
end
