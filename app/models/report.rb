class Report < ApplicationRecord
  belongs_to :fish
  belongs_to :weather
  belongs_to :water
  belongs_to :fly
  belongs_to :river
  belongs_to :user
  accepts_nested_attributes_for :fish, :weather, :fly, :river, :water
end
