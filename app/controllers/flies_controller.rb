class FliesController < ApplicationController

  def new
    @fly = Fly.new
  end

  def create
    @fly = Fly.create(fly_params)
    @fly.save

    redirect_to userreports_path(@report)
  end

  def edit
     @fly = Fly.find(params[:id])
  end

  def update
    @fly = Fly.find(params[:id])
    @fly.update(fly_params)
    redirect_to userreports_path(@report)
  end

  def destroy
    @fly = Fly.find(params[:id])
    @fly.destroy
    redirect_to userreports_path(@report)
  end

  def userreports
  
    @reports = Report.where(user_id: current_user.id)
  end


  private

  def fly_params
    params.require(:fly).permit(:name, :description, :color, :size)
  end

end
