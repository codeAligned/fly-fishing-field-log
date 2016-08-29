class User < ApplicationRecord
  belongs_to :state
  has_many :rivers

  validates_presence_of :name
  has_secure_password

end

#dont need both validates_presence_of AND has_secure_password
