class ReportsController < ApplicationController

  def new
    @report = Report.new
  end

  def index
    @reports = Report.all
  end

  def show
    @report = Report.find(params[:id])
  end

  def create
    @report = Report.create(report_params)
    @report.user_id = User.find_by(id: session[:user_id]).id
    @report.save

    redirect_to userreports_path(@report)
  end

  def edit
     @report = Report.find(params[:id])
  end

  def update
    @report = Report.find(params[:id])
    @report.update(report_params)
    redirect_to report_path(@report)
  end

  def destroy
    @report = Report.find(params[:id])
    @report.destroy
    redirect_to report_path(@report)
  end

  def userreports
    #users/id/Reports
    #find the user and their id
    @reports = Report.where(user_id: current_user.id)



  end

  private

  def report_params
    params.require(:report).permit(:name, :date, :rating, :highlights, :fish_id,
    :weather_id, :water_id, :fly_id, :river_id, :user_id)
  end

end
