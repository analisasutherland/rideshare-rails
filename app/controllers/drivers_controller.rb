class DriversController < ApplicationController

  def index
    @drivers = Driver.all.order(:name).page params[:page]
  end

  def new
    @driver = Driver.new
  end

  def show
    @driver = Driver.find(params[:id])
  end

  def edit
    @driver = Driver.find(params[:id])
  end

  def create
    @driver = Driver.new(driver_params)

    if @driver.save
      redirect_to drivers_path
    else
      render :new
    end
  end

  def update
    @driver = Driver.find(params[:id])
    @driver.assign_attributes(driver_params)

    if @driver.save
      redirect_to driver_path(@driver)
    else
      render :edit
    end
  end

  def destroy
    Driver.destroy(params[:id])
    redirect_to drivers_path
    flash[:alert] = "Driver deleted"
  end

  def driver_params
    return params.require(:driver).permit(:name, :vin)
  end
end
