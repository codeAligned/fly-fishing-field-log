class River < ApplicationRecord
  has_many :users
  has_many :stations
end
