class PassengersController < ApplicationController
  def index
    @passengers = Passenger.all
  end

  def new
    @passenger = Passenger.new
  end

  def show
    passenger_id = params[:id]
    @passenger = Passenger.find(passenger_id)
  end

end
