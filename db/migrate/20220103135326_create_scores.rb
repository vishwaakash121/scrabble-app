class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.decimal :score, precision: 10, scale: 2
      t.integer :player_id
      t.integer :match_id

      t.timestamps
    end
  end
end
