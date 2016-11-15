class FliesController < ApplicationController

  def new
    @weather = Weather.new
  end

  def index
    @weathers = Weather.all
  end

  def show
    @weather = Weather.find(params[:id])
  end

  def create
    @weather = Weather.create(weather_params)
    @weather.save

    ##eventually i want to redirect them back to the user's report
    redirect_to userreports_path(@report)
  end

  def edit
     @weather = Weather.find(params[:id])
  end

  def update
    @weather = Weather.find(params[:id])
    @weather.update(weather_params)
    ## where do I want to redirect them? Back to THEIR report
    redirect_to userreports_path(@report)
  end

  def destroy
    @weather = Weather.find(params[:id])
    @weather.destroy
    ## where do I want to redirect them? Back to THEIR report
    redirect_to userreports_path(@report)
  end

  def userreports
    #users/id/Reports
    #find the user and their id
    @reports = Report.where(user_id: current_user.id)
  end


  private

  def weather_params
    params.require(:weather).permit(:temperature, :sky, :wind, :percipitation)
  end

end
