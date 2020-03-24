class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :logged_in_user

  def logged_in_user
        unless logged_in?
          flash[:danger] = "Please log in."
          redirect_to new_user_session_path
        end
  end
  
  def logged_in?
      !current_user.nil?
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
