class Bike < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings

  validates_presence_of :name, :displacement, :power, :torque, :weight, :image
end
