class ApplicationController < ActionController::Base
  before_action :authenticate_admin!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:invite, keys: [:first_name, :last_name])
  end

  layout :layout_by_resource

  private

  def layout_by_resource
    if devise_controller? && request.env['PATH_INFO'] != '/admins/invitation/new'
      "authentication_layout"
    else
      "application"
    end
  end

end
