class BikeSerializer < ActiveModel::Serializer
  attributes :id, :name, :displacement, :power, :torque, :weight, :image

  has_many :bookings
end
