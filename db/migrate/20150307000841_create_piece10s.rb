class CreatePiece10s < ActiveRecord::Migration
  def change
    create_table :piece10s do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
