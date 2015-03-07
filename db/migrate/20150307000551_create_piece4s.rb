class CreatePiece4s < ActiveRecord::Migration
  def change
    create_table :piece4s do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
