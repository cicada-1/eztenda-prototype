class Venue < ApplicationRecord
  belongs_to :user
  has_many :offers

  validates :venue_name, presence: true
  validates :address, presence: true
  validates :description, presence: true
end
