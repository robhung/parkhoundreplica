class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  # before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :phone, :birthday, :photo, :provider, :uid])
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :phone, :birthday, :photo, :provider, :uid])
  # end

  # The path used after sign in

  def after_sign_in_path_for(resource_or_scope)
    if resource.sign_in_count == 1
       edit_user_registration_path
    else
       root_path
    end
  end

end
