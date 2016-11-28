class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :permitted_parameters, if: :devise_controller?

  helper_method :current_user
  def current_user
    @user ||= User.where(id: session[:user_id]).first if session[:user_id].present?
  end

  protected

  def permitted_parameters

    registration_params = [
        :username,
        :firstname,
        :lastname,
        :doc_type,
        :doc_number,
        :phone_number,
        :gender,
        :date_of_birth,
        :fullname,
        :company,
        :website,
        :logo,
        :cover
    ]
    login_params = [:login, :username]

    if params[:action] == 'update'
      devise_parameter_sanitizer.permit(:account_update, keys: registration_params)
    elsif params[:action] == 'new'
      devise_parameter_sanitizer.permit(:sign_in, keys: login_params)
    elsif params[:action] == 'create'
      devise_parameter_sanitizer.permit(:sign_up, keys: registration_params)
    end

  end
end
