class ApplicationController < ActionController::Base
  before_action :conhigure_permitted_parameters, if: :devise_controller?
  
  def afetr_sign_in_path_for(resource)
    post_images_path
  end
  protected
  
  def conhigure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  
end
