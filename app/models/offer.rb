class Offer < ApplicationRecord
  belongs_to :venue
  has_many :bids

  validates :min_bid, precence: true
  validates :contract_length, precence: true
  validates :estimated_volume, precence: true

end
