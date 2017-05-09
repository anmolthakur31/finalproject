class Booking < ApplicationRecord
  belongs_to :timeslot
  belongs_to :uservehicle
  belongs_to :vehicle
end
