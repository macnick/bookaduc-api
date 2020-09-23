class BookingSerializer < ActiveModel::Serializer
  attributes :date, :city, :user
  def user
    u = object.user
    { id: u.id, name: u.name }
  end
end
