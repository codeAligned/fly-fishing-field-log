class River < ApplicationRecord
  has_many :stations

  has_many :river_flies
  has_many :flies, through: :river_flies


end



### want to have methods that:

#find the biggest fish by river
  # then be able to see the conditions that
  # allowed them to catch that:
    # ie) weather, water, fly
# find most common fly by river
# return all the river's stations
# 
