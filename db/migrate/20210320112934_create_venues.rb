class CreateVenues < ActiveRecord::Migration[6.1]
  def change
    create_table :venues do |t|
      t.string :venue_name
      t.string :address
      t.string :phone_number
      t.text :description

      t.timestamps
    end
  end
end
