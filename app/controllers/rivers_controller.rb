class RiversController < ApplicationController

  def index
    @rivers = River.all
  end

  def show
  end

  def edit

  end

  def update
  end

  def destroy
  end

  def river_params
    params.require(:river).permit(:name, :state_id)
  end


end
