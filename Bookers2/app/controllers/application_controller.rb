class ApplicationController < ActionController::Base
    before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    #strong parametersを設定し、usernameを許可
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :password, :password_confirmation) }
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:username, :password, :password_confirmation) }
  end
  # 名前でログインする際に使用
end
