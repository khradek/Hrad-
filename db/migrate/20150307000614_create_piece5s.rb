class CreatePiece5s < ActiveRecord::Migration
  def change
    create_table :piece5s do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
