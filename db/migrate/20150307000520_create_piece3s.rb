class CreatePiece3s < ActiveRecord::Migration
  def change
    create_table :piece3s do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
