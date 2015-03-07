class CreatePiece6s < ActiveRecord::Migration
  def change
    create_table :piece6s do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
