class AddOfferReferenceToBids < ActiveRecord::Migration[6.1]
  def change
    add_reference :bids, :offer
  end
end
