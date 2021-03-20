class Offer < ApplicationRecord
  belongs_to :venue
  has_many :bids

  CATEGORIES = ["Gin", "Whiskey", "Whisky", "Vodka", "Rum", "Lager", "Bitter", "Cider", "Tonic Water", "Energy Drink"]

  validates :min_bid, precence: true
  validates :contract_length, precence: true
  validates :estimated_volume, precence: true
  validates :category, inclusion: { in: CATEGORIES }
end
