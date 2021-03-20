class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :brand
  has_one :venue
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
