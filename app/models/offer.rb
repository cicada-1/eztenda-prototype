class Offer < ApplicationRecord
  belongs_to :venue

  validates :min_bid, precence: true
  validates :contract_length, precence: true
  validates :estimated_volume, precence: true

end
