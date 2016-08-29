class User < ApplicationRecord
  belongs_to :state
  has_many :rivers

  has_secure_password

  validates_presence_of :name, :password
  # def home_state=(state)
  #   self.state_id = State.find_by(name: state.strip)
  # end
end
