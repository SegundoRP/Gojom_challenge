class ProductOwnerMailer < ApplicationMailer
  # Metodo para establecer los parametros del correo como destinatario entre otros
  def report_email
    @report = params[:report]
    mail(to: 'casos@gojom.com', subject: 'Nuevo reporte de cliente') do |format|
      format.mjml
    end
  end
end
