class BikesController < ApplicationController
  before_action :set_bike, only: [:show]

  def index
    @bikes = Bike.all
    json_response(@bikes)
  end

  def show
    json_response(@bike)
  end

  private
  def set_bike
    @bike = Bike.find(params[:id])
  end
end
