class AddPnameformidToPiece1s < ActiveRecord::Migration
  def change
    add_column :piece1s, :pnameform_id, :integer
  end
end
