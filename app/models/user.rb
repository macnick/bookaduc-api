class User < ApplicationRecord
  has_many :bookings, dependent: :destroy

  validates_presence_of :name, :password
end
