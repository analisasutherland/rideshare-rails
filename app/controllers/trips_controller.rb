class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def show
    trip_id = params[:id]
    @trip = Trip.find(trip_id)
  end

  def edit
    @trip = Trip.find(params[:id])
  end
end
