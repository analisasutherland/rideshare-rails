class PassengersController < ApplicationController
  def index
    @passengers = Passenger.all
  end

  def new
    @passenger = Passenger.new
  end

  def create

  end

  def show
    passenger_id = params[:id]
    @passenger = Passenger.find(passenger_id)
  end

  def edit
    @passenger = Passenger.find(params[:id])
  end

  def update
    @passenger = Passenger.find(params[:id])

    @passenger.assign_attributes(pass_params)

    if @passenger.save
      redirect_to passenger_path(passenger)
    end
  end

  def destroy
    @passenger = Passenger.find(params[:id])

    @passenger.destroy

    redirect_to '/passengers'
    flash[:alert] = "Passenger deleted"
  end

  private
  def pass_params
    params.require(:passenger).permit(:name, :phone_num)
  end
end
