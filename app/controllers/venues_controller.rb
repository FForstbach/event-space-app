class VenuesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index

    if params[:city] && params[:capacity]
      @venues = Venue.where(city: params[:city]).where("capacity > ?", params[:capacity])
      build_markers(@venues)
    elsif params[:city]
      @venues = Venue.where(city: params[:city])
      build_markers(@venues)
    elsif params[:capacity]
      @venues = Venue.where("capacity > ?", params[:capacity])
      build_markers(@venues)
    else
      @venues = Venue.all
      build_markers(@venues)
    end


    if @venue
      @venue = Venue.find(params[:id])
    else
    @venue = Venue.new
    end
  end

  def show
    @venue = Venue.find(params[:id])
    @booking = Booking.new
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.user = current_user
    if @venue.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def destroy
    @venue = Venue.find(params[:id])
    if @venue.destroy
      redirect_to bookings_path
    else
      render :new
    end
  end

private

  def build_markers(venues)
    @hash = Gmaps4rails.build_markers(@venues) do |venue, marker|
    marker.lat venue.latitude
    marker.lng venue.longitude
    # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def venue_params
    params.require(:venue).permit(:name, :address, :capacity, :city, :price, :category, :photo, :photo_cache)
  end
end
