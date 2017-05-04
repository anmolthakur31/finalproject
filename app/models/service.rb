class Service < ApplicationRecord
	 has_attached_file :photo, :styles =>{ :small => "250x250#", :large => "450x450#"}
	 validates_attachment :photo, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

end
