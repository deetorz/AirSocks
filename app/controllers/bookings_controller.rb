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
      redirect_to socks_path()
    else
      render :new
    end
  end

  def update; end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
