class Service < ApplicationRecord
	 has_attached_file :photo, :styles =>{ :small => "250x250#", :large => "450x450#"}
	 validates_attachment :photo,presence: true, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
	 has_many :vehicle_services
	 has_many :vehicles, through: :vehicle_services
	 has_many :bookings

end
