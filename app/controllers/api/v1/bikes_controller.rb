class Api::V1::BikesController < ApplicationController
  before_action :set_bike, only: %i[show update destroy]

  def index
    @bikes = Bike.all
    render json: @bikes#, each_serializer: BikeSerializer
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
    render json: @bike
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
    # whitelist params
    # params.require(:bike).permit(:name, :displacement, :power, :torque, :weight, :image)
    params.permit(:name, :displacement, :power, :torque, :weight, :image)
  end

  def set_bike
    @bike = Bike.find(params[:id])
  end
end
