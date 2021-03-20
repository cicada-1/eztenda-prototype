class Brand < ApplicationRecord
  belongs_to :user
  has_many :bids

  validates :brand_name, presence: true
  validates :description, presence: true
  validates :address, presence: true
end
