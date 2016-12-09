class Users::RegistrationsController < Devise::RegistrationsController
=begin
  def after_sign_up_path_for(resource)
    case resource
      when :user, User
        #resource.teacher? ? another_path : root_path
      else
        super
    end
  end
=end
end