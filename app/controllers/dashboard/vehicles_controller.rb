class Dashboard::VehiclesController < ApplicationController
  layout 'dashboard'
  def index
    @vehicles = Vehicle.all
  end

  def new
  end
end