class BookingSerializer < ActiveModel::Serializer
  attributes :date, :city, :user {:name, :id}
end
