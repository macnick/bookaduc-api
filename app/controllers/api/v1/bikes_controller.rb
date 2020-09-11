class Api::V1::BikesController < Api::V1::ApiController
  before_action :set_bike, only: [:show, :update, :destroy] 

  def index
    @bikes = Bike.all
    # json_response(@bikes)
    render json: @bikes
  end

  def create
    @bike = Bike.new(bike_params)
    if @bike.save
      json_response(@bike, :created)
    else
      json_response(@bike.errors, :unprocessable_entity)
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
    # whitelist params
    # params.require(:bike).permit(:name, :displacement, :power, :torque, :weight, :image)
    params.permit(:name, :displacement, :power, :torque, :weight, :image)
  end

  def set_bike
    @bike = Bike.find(params[:id])
  end
end
