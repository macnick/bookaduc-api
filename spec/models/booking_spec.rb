require 'rails_helper'

RSpec.describe Booking, type: :model do
  it { should validate_presence_of(:bike_id) }
  it { should validate_presence_of(:user_id) }
  
  it { should belong_to(:bike) }
  it { should belong_to(:user) }
end
