class Venue < ApplicationRecord
  belongs_to :user
  has_many :offers

  validates :venue_name, precence: true
  validates :address, precence: true
  valilates :description, presence: true
end
