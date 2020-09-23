require 'rails_helper'

RSpec.describe 'Bikes API', type: :request do
  let(:user) { create(:user) }
  let!(:bikes) { create_list(:bike, 10, name: '848 Evo Corse SE', displacement: '848 cc', power: '140 hp', torque: '98 Nm', weight: '168 Kg' , image: '848.jpg') }
  let(:bike_id) { bikes.first.id }
  let(:headers) { valid_headers }

  describe 'GET /bikes' do
    before { get '/api/v1/bikes', params: {}, headers: headers }

    it 'returns 10 bikes' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /bikes/:id
  describe 'GET /bikes/:id' do
    before { get '/api/v1/bikes/#{bike_id}', params: {}, headers: headers }

    # context 'when the record exists' do
    #   it 'returns the bike' do
    #     expect(json).not_to be_empty
    #     expect(json['id']).to eq(bike_id)
    #   end

    #   it 'returns status code 200' do
    #     expect(response).to have_http_status(200)
    #   end
    # end

    context 'when the record does not exist' do
      let(:bike_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Bike/)
      end
    end
  end
end
