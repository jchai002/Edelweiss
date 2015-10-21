class Announcement < ActiveRecord::Base
	has_attached_file :picture
	validates_attachment :picture,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

    attr_accessor :video_file_name

   	has_attached_file :video, styles: {
        :medium => {
          :geometry => "640x480",
          :format => 'mp4'
        },
        :thumb => { :geometry => "160x120", :format => 'jpeg', :time => 10}
    }, :processors => [:transcoder]
end
