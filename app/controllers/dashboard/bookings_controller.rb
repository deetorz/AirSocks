class Dashboard::BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking)
    @bookings_as_owner = policy_scope([:dashboard, Booking])
  end
end
