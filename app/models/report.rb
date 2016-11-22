class Report < ApplicationRecord
  belongs_to :fish
  belongs_to :weather
  belongs_to :water
  belongs_to :fly
  belongs_to :river
  belongs_to :user
  accepts_nested_attributes_for :fish, :weather, :fly, :river, :water

  def num_fish_caught(river)
    river = river.upcase
    river_id = River.find_by(name: river).id
    num_fish_caught = self.where(river_id: river_id).count
  end


end
