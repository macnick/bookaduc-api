require 'rails_helper'

RSpec.describe Bike, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:displacement) }
  it { should validate_presence_of(:power) }
  it { should validate_presence_of(:torque) }
  it { should validate_presence_of(:image) }
  # Association test
  # ensure ToBikedo model has a 1:m relationship with the Booking model
  it { should have_many(:bookings).dependent(:destroy) }
end
