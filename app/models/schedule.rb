class Schedule < ApplicationRecord
  belongs_to :park
  belongs_to :parking_space

  has_many :reservations

end
