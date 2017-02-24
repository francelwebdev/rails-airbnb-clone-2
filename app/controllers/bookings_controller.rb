  class BookingsController < ApplicationController
  def index
    @rent_bookings = Booking.where(renter_id: current_user.id)
    @own_bookings = Treehouse.where(owner_id: current_user.id)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def confirm
    @booking = Booking.new(booking_params)
    @booking.renter = current_user

  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end

  end

  def edit
  end

  def update
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:state, :renter_id, :treehouse_id, :start_date, :end_date, :price, :guest_count)
  end
end
