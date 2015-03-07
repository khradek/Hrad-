class CreatePiece1s < ActiveRecord::Migration
  def change
    create_table :piece1s do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
