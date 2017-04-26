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
      redirect_to venues_path
    else
      render :new
    end
  end

private

  def venue_params
    params.require(:venue).permit(:name, :address, :capacity, :city, :price, :category, :photo, :photo_cache)
  end

end
