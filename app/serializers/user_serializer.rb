class UserSerializer < ActiveModel::Serializer
  attributes :name, :bookings

  def bookings
    self.object.bookings.map do | b |
      {
        city: b.city,
        date: b.date,
        bike: {id: b.bike.id, name: b.bike.name}
      }
    end
  end

end
