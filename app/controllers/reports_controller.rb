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
    @report = Report.find_by(random_url: params[:random_url])
  end

  private

  def report_params
    params.require(:report).permit(:asunto, :descripcion, :fecha_del_incidente, :random_url, photos:[])
  end
end
