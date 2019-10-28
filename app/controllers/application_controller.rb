class ApplicationController < ActionController::Base
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name, :image, :about_me, :rut, :age, :phone])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
end
