class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :pnameforms, :User_id, :user_id 
  end
end
