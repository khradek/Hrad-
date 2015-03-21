class CreatePiece13s < ActiveRecord::Migration
  def change
    create_table :piece13s do |t|
      t.string :name
      t.integer :user_id
      t.integer :pnameform_id

      t.timestamps
    end
  end
end
