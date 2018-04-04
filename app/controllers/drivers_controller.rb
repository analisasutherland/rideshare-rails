class DriversController < ApplicationController

  def index
    @drivers = Driver.all
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
    end
  end

  def update
    @driver = Driver.find(params[:id])
    @driver.assign_attributes(driver_params)

    if @driver.save
      redirect_to driver_path(@driver)
    end
  end

  def destroy
    Driver.destroy(params[:id])
    redirect_to drivers_path
  end
end
