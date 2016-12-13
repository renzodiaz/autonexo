class Dashboard::PromosController < ApplicationController
  layout 'dashboard'

  def index
    @promos = Promo.all
  end

  def create
    @promo = Promo.new(promos_params)
    if @promo.save
      render json: @promo
    else
      render json: @promo.errors, status: :unprocessable_entity
    end
  end

  private
  def promos_params
    params.require(:promo).permit(:name, :firstDate, :dueDate, :vehicle_id, :user_id, :description)
  end

end
