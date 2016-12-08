class Vehicle < ApplicationRecord
  #belongs_to :brand_user
  mount_uploader :banner, BannerVehicleUploader

end
