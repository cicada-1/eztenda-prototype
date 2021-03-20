class CreateBrands < ActiveRecord::Migration[6.1]
  def change
    create_table :brands do |t|
      t.string :brand_name
      t.string :address
      t.string :phone_number
      t.text :description

      t.timestamps
    end
  end
end
