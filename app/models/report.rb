class Report < ApplicationRecord
  belongs_to :fish
  belongs_to :weather
  belongs_to :water
  belongs_to :fly 
end
