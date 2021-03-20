class CreateBids < ActiveRecord::Migration[6.1]
  def change
    create_table :bids do |t|
      t.integer :offer_amount
      t.string :additional
      t.boolean :status

      t.timestamps
    end
  end
end
