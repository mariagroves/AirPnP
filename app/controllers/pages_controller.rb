class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @toilets = Toilet.all
    @bookings = Booking.all
  end
end

