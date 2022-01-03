class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.string   :location
      t.datetime :timing
      t.integer  :winner_id

      t.timestamps
    end
  end
end
