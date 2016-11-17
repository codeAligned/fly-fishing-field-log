class HatchesController < ApplicationController

  def index
    @hatches = Hatch.all
  end


end
