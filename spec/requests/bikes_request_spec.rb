require 'rails_helper'

RSpec.describe "Bikes API", type: :request do
  let!(:bikes) { create_list(:bike, 10)}
  let(:bike_id) { bikes.first.id }

  describe 'GET /bikes' do
    before {get '/bikes'}
    it 'returns bikes' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /bikes/:id
  describe 'GET /bikes/:id' do
    before { get "/bikes/#{bike_id}" }

    context 'when the record exists' do
      it 'returns the bike' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(bike_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

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
