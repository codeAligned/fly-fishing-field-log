class River < ApplicationRecord
  has_many :stations

  has_many :river_flies
  has_many :flies, through: :river_flies


  def biggest_fish
    # ie) blue
    # name = blue
    # find all reports that have the name blue as their river. find by the river_id
    self.reports.map do |report|
      # returns all the fish
      fish_info = Fish.where(id: report.fish_id)
      fish = fish_info.order(length: :asc)
    end
    biggest_fish = fish.first
  end

  #have biggest 5 fish method?
  #Rivers with the most reports



end
