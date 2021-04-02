class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :parking_space
  belongs_to :schedule
end
