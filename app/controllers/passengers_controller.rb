class PassengersController < ApplicationController

  def index
      @passengers = Passenger.all.order(:name).page params[:page]
  end

  def new
    # if params[:passenger_id]
    #   passenger = Passenger.find_by(id: passenger_id)
    #   @trips = passenger.trips.new
    # else
      @passenger = Passenger.new
    # end
  end

  def create
    @passenger = Passenger.new(passenger_params)
    if @passenger.save
      redirect_to @passenger
    else
      render :new
    end
  end

  def show
    @passenger = Passenger.find(params[:id])
  end

  def edit
    @passenger = Passenger.find(params[:id])
    if @passenger.save
      redirect_to @passenger
    end
  end

  def update
    @passenger = Passenger.find(params[:id])
    @passenger.assign_attributes(passenger_params)
    if @passenger.save
      redirect_to passenger_path(@passenger)
    else
      render :edit
    end
  end

  def destroy
    @passenger = Passenger.find(params[:id])
    @passenger.destroy
    redirect_to '/passengers'
    flash[:alert] = "Passenger deleted"
  end

  private
  def passenger_params
    params.require(:passenger).permit(:name, :phone_num)
  end
end
