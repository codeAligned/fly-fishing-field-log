class River < ApplicationRecord
  has_many :users
  belongs_to :state
end
