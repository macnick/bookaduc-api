require 'rails_helper'

RSpec.describe 'Bookings API', type: :request do
  let(:user) { create(:user) }
  let!(:bike) do
    create(:bike,
           name: '848 Evo Corse SE',
           displacement: '848 cc',
           power: '140 hp',
           torque: '98 Nm',
           weight: '168 Kg',
           image: '848.jpg')
  end
  let!(:booking) do
    create_list(:booking, 5,
                bike_id: bike.id,
                user_id: user.id,
                city: 'Athens',
                date: Date.tomorrow)
  end
  let(:user_id) { user.id }
  let(:id) { booking.second.id }
  let(:headers) { valid_headers }
  let(:no_auth) { valid_headers.except('Authorization') }

  describe 'GET /bookings' do
    context 'when user is logged in' do
      before { get '/api/v1/bookings', params: {}, headers: headers }

      it 'returns status 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns all users\' bookings' do
        expect(json.size).to eq(5)
      end
    end

    context 'when user is not logged in' do
      before { get '/api/v1/bookings', params: {}, headers: no_auth }

      it 'returns status 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Missing token/)
      end
    end
  end

  describe 'GET /bookings/:id' do
    before { get "/api/v1/bookings/#{id}", params: {}, headers: headers }

    context 'when booking exists' do
      it 'returns a status 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns the booking' do
        expect(json['id']).to eq(id)
      end
    end

    context 'when booking does not exist' do
      let(:id) { 45 }

      it 'returns status 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Booking/)
      end
    end
  end

  # describe 'PUT /todos/:user_id/items/:id' do
  #   let(:valid_attributes) { { name: 'Mozart' }.to_json }

  #   before do
  #     put "/todos/#{user_id}/items/#{id}", params: valid_attributes, headers: headers
  #   end

  #   # [...]
  #   # [...]
  # end

  # describe 'DELETE /todos/:id' do
  #   before { delete "/todos/#{user_id}/items/#{id}", params: {}, headers: headers }

  #   # [...]
  # end
end
