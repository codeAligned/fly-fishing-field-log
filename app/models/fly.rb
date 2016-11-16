class Fly < ApplicationRecord
  has_many :river_flies
  has_many :rivers, through: :river_flies
  has_many :reports
end
