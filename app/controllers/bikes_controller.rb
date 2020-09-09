class BikesController < ApplicationController
  before_action :set_bike, only: [:show, :create]

  def index
    @bikes = Bike.all
    json_response(@bikes)
  end

  def create
    @bike = Bike.create!(todo_params)
    json_response(@bike, :created)
  end

  def show
    json_response(@bike)
  end

  private
  def set_bike
    @bike = Bike.find(params[:id])
  end
end
