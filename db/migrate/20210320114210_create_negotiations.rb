class CreateNegotiations < ActiveRecord::Migration[6.1]
  def change
    create_table :negotiations do |t|
      t.references :offer, null: false, foreign_key: true
      t.references :bid, null: false, foreign_key: true

      t.timestamps
    end
  end
end
