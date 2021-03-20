class Venue < User
  has_many :offers

  validates :venue_name, precence: true
  validates :email, precence: true
  validates :address, precence: true
  valilates :description, presence: true
  validates :email, uniqueness: true

end
