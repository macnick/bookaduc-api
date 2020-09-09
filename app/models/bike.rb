class Bike < ApplicationRecord
  has_many :bookings, dependent: :destroy

  validates_presence_of :name, :displacement, :power, :torque, :weight, :image
end
