class Brand < User
  has_many :bids

  validates :brand_name, precence: true
  validates :description, precence: true
  validates :email, precence: true
  validates :address, precence: true
  validates :email, uniqueness: true
end
