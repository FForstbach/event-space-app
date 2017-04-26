class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @featured_venues = Venue.first(3)
  end
end
