class Api::V1::BookingsController < ApplicationController
  before_action :set_booking, only: %i[show update destroy]

  def index
    @bookings = Booking.all
    render json: @bookings
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      json_response(@booking, :created)
    else
      json_response(@booking.errors, :unprocessable_entity)
    end
  end

  def show
    render json: @booking
  end

  def update
    @booking.update(booking_params)
    head :no_content
  end

  def destroy
    @booking.destroy
  end

  private

  def booking_params
    params.permit(:bike_id, :user_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
