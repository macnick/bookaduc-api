class Api::V1::BikesController < ApplicationController
  before_action :set_bike, only: [:show, :update, :destroy] 

  def index
    @bikes = Bike.all
    # json_response(@bikes)
    render json: @bikes, each_serializer: BikeSerializer
  end

  def create
    @bike = Bike.new(bike_params)
    if @bike.save
      json_response(@bike, :created, UserSerializer)
    else
      json_response(@bike.errors, :unprocessable_entity)
    end
  end

  def show
    # json_response(@bike)
    render json: @bike, status: status, serializer: UserSerializer
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
