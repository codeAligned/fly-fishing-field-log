class FliesController < ApplicationController

  def new
    @water = Water.new
  end

  def create
    @water = Water.create(water_params)
    @water.save

    redirect_to userreports_path(@report)
  end

  def edit
     @water = Water.find(params[:id])
  end

  def update
    @water = Water.find(params[:id])
    @water.update(water_params)

    redirect_to userreports_path(@report)
  end

  def destroy
    @water = Water.find(params[:id])
    @water.destroy

    redirect_to userreports_path(@report)
  end

  def userreports
    @reports = Report.where(user_id: current_user.id)
  end


  private

  def water_params
    params.require(:water).permit(:temperature, :flow, :clarity)
  end

end
