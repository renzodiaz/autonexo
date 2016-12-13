class Dashboard::CarDealershipsController < ApplicationController
  layout 'dashboard'

  def index
    @car_dealerships = CarDealership.all
  end

  def create
    @car_dealership = CarDealership.new(car_dealership_params)
    if @car_dealership.save
      render json: @car_dealership
    else
      render json: @car_dealership.errors, status: :unprocessable_entity
    end
  end

  private
  def car_dealership_params
    params.require(:car_dealership).permit(:name, :address, :user_id)
  end

end
