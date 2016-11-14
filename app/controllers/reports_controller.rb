class ReportsController < ApplicationController

  def new
    # @river = River.find(params[:river_id])
    # @fly = Fly.find(params[:fly_id])
    # @fish = Fish.find(params[:fish_id])
    # @weather = Weather.find(params[:weather_id])
    # @water = Water.find(params[:water_id])
    @report = Report.new
    @fish = Fish.new


  end

  def index
    @reports = Report.all
  end

  def show
    binding.pry
    @report = Report.find(params[:id])
    @fish = Fish.where(id: params[:fish_id])
  end

  def create
    @report = Report.create(report_params)
    @report.user_id = User.find_by(id: session[:user_id]).id
    fish_species = params[:fish][:species]
    fish_weight = params[:fish][:weight]
    fish_length = params[:fish][:length]
    @report.fish_id = Fish.find_or_create_by(species: fish_species, weight: fish_weight, length: fish_length).id

    # @report.fish_id = Fish.find_by(id: params[:id])
    @report.save
    binding.pry

    redirect_to userreports_path(@report.user_id)
  end

  def edit
     @report = Report.find(params[:id])
  end

  def update
    @report = Report.find(params[:id])
    @report.update(report_params)
    redirect_to report_path(@report)
  end

  def destroy
    @report = Report.find(params[:id])
    @report.destroy
    redirect_to report_path(@report)
  end

  def userreports
    binding.pry
    #users/id/Reports
    #find the user and their id
    @reports = Report.where(user_id: current_user.id)
    ## next step is to find the fish, fly, weather, water and their data according
    ## to their ids.

    @reports.each do |report|
      @fish = report.where(fish_id: params[:report][:fish_id])
    end


  end

  private

  def report_params
    params.require(:report).permit(:name, :date, :rating, :highlights, :fish_id, :user_id)
  end

end
