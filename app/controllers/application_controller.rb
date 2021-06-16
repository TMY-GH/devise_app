class ApplicationController < ActionController::Base
  befoer_action configure_permitted_parameters, if: devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, key: [:nickname])
  end

end
