class Users::RegistrationsController < Devise::RegistrationsController
  
  skip_before_filter :verify_authenticity_token, :only => [:ipn_notification]
  before_filter :configure_permitted_parameters
  
  protected
  # my custom fields are :name, :heard_how
  # Strong parameters devise
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:email, :password, :password_confirmation, :name)
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:email, :password, :password_confirmation, :current_password, :name)
    end
  end

end
