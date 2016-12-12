class Dashboard::DealersController < ApplicationController
  layout 'dashboard'

  def index
    @dealers = Dealer.all
  end

  def create
    @dealer = Dealer.new(dealers_params)
    if @dealer.save
      render json: @dealer
    else
      render json: @dealer.errors, status: :unprocessable_entity
    end
  end

  private
  def dealers_params
    params.require(:dealer).permit(:name, :fulladdress)
  end

end
