class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name
    devise_parameter_sanitizer.for(:sign_up) << :gender
    devise_parameter_sanitizer.for(:account_update) << :gender
    devise_parameter_sanitizer.for(:sign_up) << :dateofbirth
    devise_parameter_sanitizer.for(:account_update) << :dateofbirth
    devise_parameter_sanitizer.for(:sign_up) << :profilepicture
    devise_parameter_sanitizer.for(:account_update) << :profilepicture
    devise_parameter_sanitizer.for(:sign_up) << :role
    devise_parameter_sanitizer.for(:account_update) << :role

  end

#   # def authenticate_active_admin_user!
#   #   authenticate_user!
#   #   unless current_user.role?(:admin)
#   #     flash[:alert] = "You are not authorized to access this resource!"
#   #     redirect_to root_path
#   #  end
# end

end
