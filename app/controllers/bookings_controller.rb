class BookingsController < ApplicationController
  def new
    # @toilet = Tilet.find(params[:toilet_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @toilet = Toilet.find(params[:toilet_id])
    @booking.renter = current_user
    @booking.toilet = @toilet
    if @booking.save
      redirect_to dashboard_path(@booking)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :time)
  end
end
