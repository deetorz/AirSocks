class BookingsController < ApplicationController
  def new
    @sock = Sock.find(params[:sock_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @sock = Sock.find(params[:sock_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.sock = @sock
    authorize @booking
    if @booking.save
      redirect_to dashboard_bookings_path
    else
      render :new
    end
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(booking_params)

    redirect_to dashboard_bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
