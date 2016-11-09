class River < ApplicationRecord
  has_many :users
  has_many :stations
  has_many :hatches
  has_many :flies, through: :hatches

end
