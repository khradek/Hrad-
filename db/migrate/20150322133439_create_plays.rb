class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.string :piece1
      t.string :piece2
      t.string :piece3
      t.string :piece4
      t.string :piece5
      t.string :piece6
      t.string :piece7
      t.string :piece8
      t.string :piece9
      t.string :piece10
      t.string :piece11
      t.string :piece12
      t.string :piece13
      t.string :piece14
      t.string :piece15
      t.string :piece16
      t.string :piece17
      t.string :piece18
      t.string :piece19
      t.string :piece20
      t.string :piece21
      t.string :piece22
      t.string :piece23
      t.string :piece24
      t.string :piece25
      t.integer :sed_id

      t.timestamps
    end
  end
end
