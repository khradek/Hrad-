class AddUseridToPnameforms < ActiveRecord::Migration
  def change
    add_column :pnameforms, :User_id, :integer
  end
end
