class CreatePiece14s < ActiveRecord::Migration
  def change
    create_table :piece14s do |t|
      t.string :name
      t.integer :user_id
      t.integer :pnameform_id

      t.timestamps
    end
  end
end
