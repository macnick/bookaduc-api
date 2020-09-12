class Api::V1::UserSerializer < Api::V1::ActiveModel::Serializer
  attributes :id

  has_many :bookings
end
