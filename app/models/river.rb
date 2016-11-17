class River < ApplicationRecord
  has_many :stations

  has_many :river_flies
  has_many :flies, through: :river_flies

  def reports(name)
    river = name.upcase
    river_name = River.find_by(name: river)
    reports = Report.where(river_id: river_name.id)
  end


  def biggest_fish(name)
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

  def stations(name)
    river = name.upcase
    river_name = River.find_by(name: river)
    stations = Station.where(river_id: river_name.id)
  end


end

### want to have methods that:

#find the biggest fish by river
  # then be able to see the conditions that
  # allowed them to catch that:
    # ie) weather, water, fly
# find most common fly by river
