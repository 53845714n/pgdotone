class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  # Declare controller methods as helper methods to access
  # them as Devise functions from another views
  helper_method :resource, :resource_name, :devise_mapping

  # Devise redirect user in admin views if isn't logged in
  def authenticate_user!
  	if user_signed_in?
  	  super
    else
      redirect_to new_user_session_path, notice: 'Debes iniciar sesión'
    end
  end

  # Devise redirect when login, return the corresponding path
  def after_sign_in_path_for(resource)
  	admin_path
  end

  # Devise redirect when logout, return the corresponding path
  def after_sign_out_path_for(resource)
  	new_user_session_path
  end

  def resource_name
  	:user
  end

  def resource
  	@resource ||= User.new
  end

  def devise_mapping
  	@devise_mapping ||= Devise.mapping[:user]
  end

end
