class ProductOwnerMailer < ApplicationMailer
  def report_email
    @report = params[:report]
    mail to: 'andres.r4793@gmail.com', subject: 'Nuevo reporte de cliente'
  end
end
