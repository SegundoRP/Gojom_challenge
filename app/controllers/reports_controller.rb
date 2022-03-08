class ReportsController < ApplicationController
  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      redirect_to show_reports_path(@report.random_url)
    else
      render :new
    end
  end


  def show
    @report = Report.find_by(random_url: params[:id])
    # @report = Report.find_by(random_url: params[:random_url]) asi lo hice yo y era con el de arriba
  end

  private

  def report_params
    params.require(:report).permit(:asunto, :descripcion, :fecha_del_incidente, :random_url, photos:[])
  end
end


# https://es.stackoverflow.com/questions/164971/formato-de-fecha-en-rails esta e sla pagina donde explica formato I18n de las fechas en vista show
# #{Report.order("created_at DESC").first.random_url} puse eso en el show y pudo haber sido solo @reports.random_url
