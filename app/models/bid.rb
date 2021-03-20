class Bid < ApplicationRecord
  belongs_to :brand

  validates :offer_amount, presence: true
end
