class User < ApplicationRecord
  has_secure_password
  has_many :bookings, dependent: :destroy
  has_many :bikes, through: :bookings

  validates_presence_of :name, :email, :password_digest
  validates :email, uniqueness: true
end
