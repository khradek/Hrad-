class CreatePiece22s < ActiveRecord::Migration
  def change
    create_table :piece22s do |t|
      t.string :name
      t.integer :user_id
      t.integer :pnameform_id

      t.timestamps
    end
  end
end
