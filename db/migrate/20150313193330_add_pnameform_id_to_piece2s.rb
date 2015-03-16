class AddPnameformIdToPiece2s < ActiveRecord::Migration
  def change
  	add_column :piece2s, :pnameform_id, :integer
  	add_column :piece3s, :pnameform_id, :integer
  	add_column :piece4s, :pnameform_id, :integer
  	add_column :piece5s, :pnameform_id, :integer
  	add_column :piece6s, :pnameform_id, :integer
  	add_column :piece7s, :pnameform_id, :integer
  	add_column :piece8s, :pnameform_id, :integer
  	add_column :piece9s, :pnameform_id, :integer
  	add_column :piece10s, :pnameform_id, :integer  	
  end
end
