class CarsController < ApplicationController
  def new
    @car = Cars.new
  end
  
  def create
    @car = Car.create!(car_params)
    redirect_to profile_path, notice: 'Car has been created'
  end
  
  private
  ## grabs all of the required user information needed for signup
  def car_params
    params.require(:car).permit!
  end
end