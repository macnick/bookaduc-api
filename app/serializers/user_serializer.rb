class UserSerializer < ActiveModel::Serializer
  attributes :name, :bookings

  def bookings
    object.bookings.map do |b|
      {
        id: b.id,
        city: b.city,
        date: b.date,
        bike: { id: b.bike.id, name: b.bike.name }
      }
    end
  end
end
