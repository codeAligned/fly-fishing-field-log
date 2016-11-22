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

  def most_reports
    report = Report.group(:river_id).order('count_id DESC').limit(1).count(:id)
    #this returns {1=>9}
    river_id = report.first[0]
    river = self.where(id: river_id)
  end



end
