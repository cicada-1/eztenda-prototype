class AddReferenceToBrands < ActiveRecord::Migration[6.1]
  def change
    add_reference :brands, :user
  end
end
