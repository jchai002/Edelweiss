class Video < ActiveRecord::Base
	
	has_attached_file :upload, styles: {
        :medium => {
          :geometry => "640x480",
          :format => 'mp4'
        },
        :thumb => { :geometry => "160x120", :format => 'jpeg', :time => 10}
    }, :processors => [:transcoder]
    validates_attachment_content_type :upload, :content_type => /\Avideo\/.*\Z/

	def convert_to_embed_url
		if self.url.include?('youtube')
			self.url.gsub!('watch?v=',"embed/")
		end
	end

end
