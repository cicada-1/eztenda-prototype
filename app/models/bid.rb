class Bid < ApplicationRecord
  belongs_to :user

  validates :offer_amount, presence: true
end
