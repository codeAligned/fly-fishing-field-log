class Station < ApplicationRecord
  belongs_to :river
  # 
  # def self.popular(name)
  #   # first find all the stations with that river's id
  #   river_id = River.where(name: name).id
  #   binding.pry
  #   stations = Station.find_by(river_id: river_id)
  #   stations.each do |station|
  #     station.station_name
  #   end
  #
  # end


end
