class Booking < ApplicationRecord
  belongs_to :timeslot
  belongs_to :uservehicle
end
