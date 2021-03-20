class Brand < ApplicationRecord
  belongs_to :user
  has_many :bids

  validates :brand_name, precence: true
  validates :description, precence: true
  validates :address, precence: true
end
