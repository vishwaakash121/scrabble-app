class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string  :name
      t.string  :phone_no
      t.date    :date_of_joining_club
      t.integer :best_match_id
      t.decimal :avg_score
      t.integer :total_wins
      t.integer :total_losses

      t.timestamps
    end
  end
end
