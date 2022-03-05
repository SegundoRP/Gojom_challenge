class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  protected
  # Metodo para direccionar al usuario a pagina new report en cuanto se loguea
  def after_sign_in_path_for(_resource)
    reports_new_path
  end
end
