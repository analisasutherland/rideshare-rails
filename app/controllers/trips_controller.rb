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

  def new
    @trip = Trip.new(passenger_id: params[:passenger_id])
  end

  def create
    @trip = Trip.new(trip_params)

    if @trip.save
      redirect_to trips_path
    else
      render :new
    end
  end

  private
  def trip_params
    return params.require(:trip).permit(:passenger_id, :driver_id, :date, :rating, :cost)
  end
end
