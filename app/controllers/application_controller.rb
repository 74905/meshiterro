class ApplicationController < ActionController::Base
  before_action :conhigure_permitted_parameters, if: :devise_controller?
  
  protected
  
  def conhigure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  
  has_many :post_images, dependent: :destroy
end
