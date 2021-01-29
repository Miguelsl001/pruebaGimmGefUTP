class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    added_attrs = [:nombre, :apellido, :username, :email, :cargo, :bdate, :carrera, :avatar, :genero, :codigo, :telefono, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: [:avatar, added_attrs]
    devise_parameter_sanitizer.permit :account_update, keys: [:avatar, added_attrs]
  end
end
