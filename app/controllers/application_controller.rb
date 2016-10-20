class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception


  ######################### Devise #########################

  protected

  # The path used after sign in

  # def after_sign_in_path_for(resource_or_scope)
  #   if resource.sign_in_count == 1
  #      edit_user_registration_path
  #   else
  #      root_path
  #   end
  # end

end
