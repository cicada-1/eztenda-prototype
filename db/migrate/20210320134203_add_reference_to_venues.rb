class AddReferenceToVenues < ActiveRecord::Migration[6.1]
  def change
    add_reference :venues, :user
  end
end
