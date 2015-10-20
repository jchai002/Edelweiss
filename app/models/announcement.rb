class Announcement < ActiveRecord::Base
	has_attached_file :picture
	validates_attachment :picture,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
