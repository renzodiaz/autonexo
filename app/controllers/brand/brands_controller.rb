class Brand::BrandsController < ApplicationController

  def show
    @user = BrandUser.find(params[:id])
  end

end