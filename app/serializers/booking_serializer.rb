class BookingSerializer < ApplicationSerializer
  attributes :id, :date, :city
  belongs_to :bike
end
