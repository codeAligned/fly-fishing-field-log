class Hatch < ApplicationRecord
  belongs_to :river
  has_many :flies


end
