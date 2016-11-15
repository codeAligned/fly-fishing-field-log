class FliesController < ApplicationController

  def new
    @fly = Fly.new
  end

  def index
    @flies = Fly.all
  end

  def show
    @fly = Fly.find(params[:id])
  end

  def create
    @fly = Fly.create(fly_params)
    @fly.save

    ##eventually i want to redirect them back to the user's report
    redirect_to userreports_path(@report)
  end

  def edit
     @fly = Fly.find(params[:id])
  end

  def update
    @fly = Fly.find(params[:id])
    @fly.update(fly_params)
    ## where do I want to redirect them? Back to THEIR report
    redirect_to fly_path(@fly)
  end

  def destroy
    @fly = Fly.find(params[:id])
    @fly.destroy
    redirect_to fly_path(@fly)
  end

  def userreports
    #users/id/Reports
    #find the user and their id
    @reports = Report.where(user_id: current_user.id)
  end


  private

  def fly_params
    params.require(:fly).permit(:name, :description, :color, :size)
  end

end
