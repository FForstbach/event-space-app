class VenuesController < ApplicationController

  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.find(params[:id])
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
    params.require(:venue).permit(:name, :address, :capacity, :price, :category, :photo, :photo_cache)
  end
end
