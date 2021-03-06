class Service < ApplicationRecord
	acts_as_paranoid
	 has_attached_file :photo, :styles =>{:thumb => "40x40>" ,  :small => "250x250#", :large => "500x360>", :xlarge => "1000x500>" }
	 validates_attachment :photo,presence: true, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
	 has_many :vehicle_services

	 has_many :vehicles, through: :vehicle_services
	 has_many :bookings

end
