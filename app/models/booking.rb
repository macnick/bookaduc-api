class Booking < ApplicationRecord
  belongs_to :bike
  belongs_to :user

  validates_presence_of :bike_id, :user_id
end
