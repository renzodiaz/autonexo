class Dashboard::VehiclesController < ApplicationController
  layout 'dashboard'

  def index
    @vehicles = Vehicle.all
  end

  def create
    @vehicle = Vehicle.new(vehicles_params)
    if @vehicle.save
      render json: @vehicle
    else
      render json: @vehicle.errors, status: :unprocessable_entity
    end
  end

  private
  def vehicles_params
    params.require(:vehicle).permit(:vehicle, :banner, :price)
  end

end