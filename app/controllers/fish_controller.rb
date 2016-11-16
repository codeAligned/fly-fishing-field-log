class FishController < ApplicationController

  def new
    @fish = Fish.new
  end

  def create
    @fish = Fish.create(fish_params)
    @fish.save
    redirect_to userreports_path(@report)
  end

  def edit
     @fish = Fish.find(params[:id])
  end

  def update
    @fish = Fish.find(params[:id])
    @fish.update(fish_params)

    redirect_to userreports_path(@report)
  end

  def destroy
    @fish = Fish.find(params[:id])
    @fish.destroy
    redirect_to userreports_path(@report)
  end

  def userreports
  
    @reports = Report.where(user_id: current_user.id)
  end


  private

  def fish_params
    params.require(:fish).permit(:species, :weight, :length)
  end

end
