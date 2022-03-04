class ReportsController < ApplicationController
  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      redirect_to report_path(@report)
    else
      render :new
    end
  end


  def show
    @report = Report.find(params[:id])
  end

  private

  def report_params
    params.require(:report).permit(:asunto, :descripcion, :fecha_del_incidente, photos:[])
  end
end
