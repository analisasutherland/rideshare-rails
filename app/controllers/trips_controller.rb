class TripsController < ApplicationController
  def index
    @trips = Trip.all.order(:id).page params[:page]
  end

  def show
    trip_id = params[:id]
    @trip = Trip.find(trip_id)
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    trip = Trip.find(params[:id])
    trip.assign_attributes(trip_params)
    if trip.save
      redirect_to trip_path(trip)
    end
  end

  def new
    @trip = Trip.new(passenger_id: params[:passenger_id])
    @trip.driver_id = Driver.get_random_driver
  end

  def create
    @trip = Trip.new(trip_params)

    if @trip.save
      redirect_to trips_path
    else
      render :new
    end
  end

  def destroy
    Trip.destroy(params[:id])
    redirect_to trips_path
  end

  private
  def trip_params
    return params.require(:trip).permit(:passenger_id, :driver_id, :date, :rating, :cost)
  end
end
