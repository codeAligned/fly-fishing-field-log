class River < ApplicationRecord
  has_many :stations

  has_many :river_flies
  has_many :flies, through: :river_flies

  def reports(river)
    name = river.upcase
    river_name = River.find_by(name: name)
    reports = Report.where(river_id: river_name.id)
  end


  def biggest_fish(river)
    # ie) blue
    # name = blue
    # find all reports that have the name blue as their river. find by the river_id

    river_name = River.find_by(name: river)
    reports = Report.where(river_id: river_name.id)
  end

end



### want to have methods that:

#find the biggest fish by river
  # then be able to see the conditions that
  # allowed them to catch that:
    # ie) weather, water, fly
# find most common fly by river
# return all the river's stations
#
