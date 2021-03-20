class Offer < ApplicationRecord
  belongs_to :venue
  has_many :bids

  CATEGORIES = ["Gin", "Whiskey", "Whisky", "Vodka", "Rum", "Lager", "Bitter", "Cider", "Tonic Water", "Energy Drink"]

  validates :min_bid, presence: true
  validates :contract_length, presence: true
  validates :estimated_volume, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
