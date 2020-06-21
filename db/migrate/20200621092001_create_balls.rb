class CreateBalls < ActiveRecord::Migration[6.0]
  def change
    create_table :balls do |t|
      t.integer :ball_no
      t.integer :striker_id
      t.integer :non_striker_id
      t.integer :runs
      t.boolean :wide
      t.boolean :no_ball
      t.integer :bye
      t.integer :leg_bye
      t.boolean :wicket
      t.string :how_out
      t.string :field
      t.integer :batter_out_id
      t.references :over, null: false, foreign_key: true

      t.timestamps
    end
  end
end
