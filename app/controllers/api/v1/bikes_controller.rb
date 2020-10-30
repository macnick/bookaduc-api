class Api::V1::BikesController < ApplicationController
  before_action :set_bike, only: %i[show update destroy]

  def index
    @bikes = Bike.all
    # render json: @bikes, status: :ok
    json_response(@bikes)
  end

  def create
    @bike = Bike.new(bike_params)
    if @bike.save
      render json: @bike, status: :created
    else
      render json: @bike.errors, status: :unprocessable_entity
    end
  end

  def show
    json_response(@bike)
  end

  def update
    @bike.update(bike_params)
    head :no_content
  end

  def destroy
    @bike.destroy
  end

  private

  def bike_params
    params.permit(:name, :displacement, :power, :torque, :weight, :image)
  end

  def set_bike
    @bike = Bike.find(params[:id])
  end
end
