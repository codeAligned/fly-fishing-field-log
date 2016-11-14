class FishController < ApplicationController

  def new
    @fish = Fish.new
  end

  def index
    @fishs = Fish.all
  end

  def show
    @fish = Fish.find(params[:id])
  end

  def create
    @fish = Fish.create(fish_params)
    @fish.save

    ##eventually i want to redirect them back to the user's report
    redirect_to userreports_path(@report)
  end

  def edit
     @fish = Fish.find(params[:id])
  end

  def update
    @fish = Fish.find(params[:id])
    @fish.update(fish_params)
    ## where do I want to redirect them? Back to THEIR report
    redirect_to fish_path(@fish)
  end

  def destroy
    @fish = Fish.find(params[:id])
    @fish.destroy
    redirect_to fish_path(@fish)
  end

  def userreports
    #users/id/Reports
    #find the user and their id
    @reports = Report.where(user_id: current_user.id)
  end


  private

  def fish_params
    params.require(:fish).permit(:species, :weight, :length)
  end

end
