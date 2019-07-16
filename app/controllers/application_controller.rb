class ApplicationController < ActionController::Base
  # Verify User; before action and then skip as needed (Index/Show/New)
  before_action :authenticate_user!

  # Add Permissions to AppController
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  def after_sign_in_path_for(resource)
    root_path
  end
end
