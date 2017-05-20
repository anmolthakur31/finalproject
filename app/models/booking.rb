class Booking < ApplicationRecord
  belongs_to :uservehicle
  belongs_to :user
  def uservehicle
  Uservehicle.unscoped { super }
	end
end
