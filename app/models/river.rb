class River < ApplicationRecord
  has_many :stations

  has_many :river_flies
  has_many :flies, through: :river_flies

  def reports
    reports = Report.where(river_id: self.id)
  end


  def biggest_fish
    # ie) blue
    # name = blue
    # find all reports that have the name blue as their river. find by the river_id
    reports.map do |report|
      # returns all the fish
      fish_info = Fish.where(id: report.fish_id)
      fish = fish_info.order(length: :asc)
    end
    biggest_fish = fish.first
  end

  def stations
    stations = Station.where(river_id: self.id)
  end


end

### want to have methods that:

#find the biggest fish by river
  # then be able to see the conditions that
  # allowed them to catch that:
    # ie) weather, water, fly
# find most common fly by river
