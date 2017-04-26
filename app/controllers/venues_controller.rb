class VenuesController < ApplicationController


  def index
    if params[:city] != nil
      @venues = Venue.where({ city: params[:city] })
    elsif params[:query] != nil
      @venues = Venue.where({ category: params[:query] })
    else
      @venues = Venue.all
    end

    if @venue
      @venue = Venue.find(params[:id])
    else
    @venue = Venue.new
    end

    # @flats = Flat.where.not(latitude: nil, longitude: nil)

    # @hash = Gmaps4rails.build_markers(@flats) do |flat, marker|
    #   marker.lat flat.latitude
    #   marker.lng flat.longitude
    #   # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    # end
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
    params.require(:venue).permit(:name, :address, :capacity, :price, :category, :photo, :photo_cache)
  end
