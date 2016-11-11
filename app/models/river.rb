class River < ApplicationRecord
  has_many :stations

  has_many :river_flies
  has_many :flies, through: :river_flies
end
