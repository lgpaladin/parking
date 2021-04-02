class ParkingSpace < ApplicationRecord
  belongs_to :park

	has_many :schedules
	has_many :reservations

end
