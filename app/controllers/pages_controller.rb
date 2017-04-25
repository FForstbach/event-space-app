class PagesController < ApplicationController
  def home
    @featured_venues = Venue.first(3)
  end
end
