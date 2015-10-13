class Video < ActiveRecord::Base
	def convert_to_embed_url
		if self.url.include?('youtube')
			self.url.gsub!('watch?v=',"embed/")
		end
	end

end
