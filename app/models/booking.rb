class Booking < ApplicationRecord
  belongs_to :uservehicle
  belongs_to :user
  belongs_to :service  

  def uservehicle
  Uservehicle.unscoped { super }
	end

	def service
  Service.unscoped { super }
	end
	
end
