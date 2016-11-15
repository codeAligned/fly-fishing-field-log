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
    ##fish
    fish_species = params[:fish][:species]
    fish_weight = params[:fish][:weight]
    fish_length = params[:fish][:length]
    @report.fish_id = Fish.find_or_create_by(species: fish_species, weight: fish_weight, length: fish_length).id

    ##fly
    fly_name = params[:fly][:name]
    fly_description = params[:fly][:description]
    fly_color = params[:fly][:color]
    fly_size = params[:fly][:size]
    @report.fly_id = Fly.find_or_create_by(name: fly_name, description: fly_description, color: fly_color, size: fly_size).id

    ##weather
    w_temp = params[:weather][:temperature]
    w_sky = params[:weather][:sky]
    w_wind = params[:weather][:wind]
    w_percipitation = params[:weather][:percipitation]
    @report.weather_id = Weather.find_or_create_by(temperature: w_temp, sky: w_sky, wind: w_wind, percipitation: w_percipitation).id

    ##water
    water_temp = params[:water][:temperature]
    water_flow = params[:water][:flow]
    water_clarity = params[:water][:clarity]
    @report.water_id = Water.find_or_create_by(temperature: water_temp, flow: water_flow, clarity: water_clarity ).id

    ##river
    @report.river_id = River.find_by(id: params[:report][:river_id]).id
    @report.save
    binding.pry

    redirect_to userreports_path(@report.id)
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

  # def userreport
  #   binding.pry
  #   @report = Report.find(params[:id]).where(user_id: current_user.id)
  # end

  def userreports
    ##check to see if the id's of user match up to their reports
    #users/id/Reports
    #find the user and their id
    @reports = Report.where(user_id: current_user.id)

    ##need to eventually be able to do go through all reports, find the fish_id, and
    ## return all the fish and their info based on the id.
    #
    # @reports.each do |report|
    #   @fish = Fish.where(id: report.fish_id)
    # end
    #   binding.pry
    # @fish = Fish.joins(:reports).where(fish_id: id)
    ## this returns all fish

    # @fish = Report.joins(:fish).where(user_id: current_user.id)
    ## next step is to find the fish, fly, weather, water and their data according
    ## to their ids.

  end

  private

  def report_params
    params.require(:report).permit(:name, :date, :rating, :highlights, :fish_id, :fly_id, :water_id, :weather_id, :user_id)
  end

end
