class Park < ApplicationRecord

	has_many :tariffs				, dependent: :destroy
	has_many :schedules		  , dependent: :destroy
	has_many :reservations  , dependent: :destroy
	has_many :parking_spaces, dependent: :destroy

end
