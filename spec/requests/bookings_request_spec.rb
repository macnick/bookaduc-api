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
                location: 'Athens',
                date: Date.tomorrow)
  end
  let(:user_id) { user.id }
  let(:id) { booking.first.id }
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

  # describe 'POST /todos/:user_id/items' do
  #   let(:valid_attributes) { { name: 'Visit Narnia', done: false }.to_json }

  #   context 'when request attributes are valid' do
  #     before do
  #       post "/todos/#{user_id}/items", params: valid_attributes, headers: headers
  #     end

  #     # [...]
  #   end

  #   context 'when an invalid request' do
  #     before { post "/todos/#{user_id}/items", params: {}, headers: headers }

  #     # [...]
  #   end
  # end

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
