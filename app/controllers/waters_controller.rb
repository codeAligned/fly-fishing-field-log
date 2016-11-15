class FliesController < ApplicationController

  def new
    @water = Water.new
  end

  def index
    @waters = Water.all
  end

  def show
    @water = Water.find(params[:id])
  end

  def create
    @water = Water.create(water_params)
    @water.save

    ##eventually i want to redirect them back to the user's report
    redirect_to userreports_path(@report)
  end

  def edit
     @water = Water.find(params[:id])
  end

  def update
    @water = Water.find(params[:id])
    @water.update(water_params)
    ## where do I want to redirect them? Back to THEIR report
    redirect_to userreports_path(@report)
  end

  def destroy
    @water = Water.find(params[:id])
    @water.destroy
    ## where do I want to redirect them? Back to THEIR report
    redirect_to userreports_path(@report)
  end

  def userreports
    #users/id/Reports
    #find the user and their id
    @reports = Report.where(user_id: current_user.id)
  end


  private

  def water_params
    params.require(:water).permit(:temperature, :flow, :clarity)
  end

end
