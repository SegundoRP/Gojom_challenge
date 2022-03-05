class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  # Metodo para direccionar al usuario a pagina new report en cuanto se loguea
  def after_sign_in_path_for(_resource)
    new_report_path
  end
end
