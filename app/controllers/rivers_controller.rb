class RiversController < ApplicationController

  def new
    @river = River.new
  end

  def create
    @rivers = River.create(river_params)
  end

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
    params.require(:river).permit(:name, :state_id, :location)
  end


end
