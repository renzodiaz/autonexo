class HomeController < ApplicationController
  def index
    @products = Vehicle.all
  end
end
