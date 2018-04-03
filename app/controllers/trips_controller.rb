class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def show
    trip_id = params[:id]
    @trip = Trip.find(trip_id)
  end
end
