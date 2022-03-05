class ProductOwnerMailer < ApplicationMailer
  def report_email
    @report = params[:report]
    mail(to: 'casos@gojom.com', subject: 'Nuevo reporte de cliente') do |format|
      format.mjml
    end
  end
end
