class Fish < ApplicationRecord
  has_many :reports
  accepts_nested_attributes_for :reports
end
