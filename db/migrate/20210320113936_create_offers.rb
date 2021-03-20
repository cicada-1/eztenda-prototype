class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.integer :min_bid
      t.string :contract_length
      t.string :estimated_volume
      t.string :category
      t.references :venue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
