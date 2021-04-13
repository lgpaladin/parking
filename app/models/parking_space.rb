class ParkingSpace < ApplicationRecord
  belongs_to :park

	has_many :schedules
	has_many :reservations

	validates :uid, numericality: { only_integer: true }

end
