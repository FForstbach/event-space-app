class VenuesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:search] != nil
      @venues = lat.where.not(latitude: nil, longitude: nil)
      @hash = Gmaps4rails.build_markers(@venues) do |venue, marker|
      marker.lat venue.latitude
      marker.lng venue.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
      end
    elsif params[:city] != nil
      @venues = Venue.where({ city: params[:city] }).where.not(latitude: nil, longitude: nil)
      @hash = Gmaps4rails.build_markers(@venues) do |venue, marker|
      marker.lat venue.latitude
      marker.lng venue.longitude
      end
    elsif params[:query] != nil
      @venues = Venue.where({ category: params[:query] }).where.not(latitude: nil, longitude: nil)
      @hash = Gmaps4rails.build_markers(@venues) do |venue, marker|
      marker.lat venue.latitude
      marker.lng venue.longitude
      end
    else
      @venues = Venue.all
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
      redir
      ect_to venues_path
    else
      render :new
    end
  end

private

  def venue_params
    params.require(:venue).permit(:name, :address, :capacity, :city, :price, :category, :photo, :photo_cache)
  end
end
