class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @booking.venue = Venue.find(params[:venue_id])
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def index
    @bookings = Booking.all
    @user = current_user
    @venues = Venue.where(user_id: @user.id)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end
end
