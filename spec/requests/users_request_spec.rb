require 'rails_helper'

RSpec.describe 'Users', type: :request do
  let!(:users) { create_list(:user, 4) }
  let(:user_id) { users.first.id }


  # Test suite for GET /users/:id
  

end
