class Booking < ApplicationRecord
  belongs_to :uservehicle
  belongs_to :user
end
