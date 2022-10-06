class ApplicationController < ActionController::Base
  before_action :configured_permitted_parameters, if: :devise_controller?

  protected
  def configured_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone])
  end

  def tengo_permisos?
    if !current_user.admin?
      redirect_to articles_path, alert: "No tiene permiso"
    end
  end
end
