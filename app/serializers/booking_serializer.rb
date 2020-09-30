class BookingSerializer < ActiveModel::Serializer
  attributes :id, :date, :city, :user
  def user
    u = object.user
    { id: u.id, name: u.name }
  end
end
