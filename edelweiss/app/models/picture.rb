class Picture < ActiveRecord::Base
	belongs_to :album
	has_attached_file :link, :styles => { :medium => "300x300#",:thumb => "100x100#" }
	
	validates_attachment 	:link, 
				:presence => true,
				:content_type => { :content_type => /\Aimage\/.*\Z/ },
				:size => { :less_than => 1.megabyte }
end
