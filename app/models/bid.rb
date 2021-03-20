class Bid < ApplicationRecord
  belongs_to :user

  validates :offer_amount, precence: true
end
