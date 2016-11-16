class FliesController < ApplicationController

  def new
    @weather = Weather.new
  end

  def create
    @weather = Weather.create(weather_params)
    @weather.save

    redirect_to userreports_path(@report)
  end

  def edit
     @weather = Weather.find(params[:id])
  end

  def update
    @weather = Weather.find(params[:id])
    @weather.update(weather_params)

    redirect_to userreports_path(@report)
  end

  def destroy
    @weather = Weather.find(params[:id])
    @weather.destroy

    redirect_to userreports_path(@report)
  end

  def userreports
    @reports = Report.where(user_id: current_user.id)
  end


  private

  def weather_params
    params.require(:weather).permit(:temperature, :sky, :wind, :percipitation)
  end

end
