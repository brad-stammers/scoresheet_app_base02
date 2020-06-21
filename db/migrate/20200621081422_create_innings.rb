class CreateInnings < ActiveRecord::Migration[6.0]
  def change
    create_table :innings do |t|
      t.string :home
      t.string :away
      t.string :ground
      t.date :start_date
      t.date :end_date
      t.string :competition
      t.string :round
      t.string :umpire_01
      t.string :umpire_02
      t.string :batting_team
      t.string :bowling_team
      t.integer :inning_no

      t.timestamps
    end
  end
end
