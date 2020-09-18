class BookingSerializer < ActiveModel::Serializer
  attributes :date, :city, :user
end
