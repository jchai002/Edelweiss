class MainController < ApplicationController
  def index
  	@home_page = true
  	@announcements= Announcement.all
  end 

  def lyrics
  	@default_song = Song.first
  	@albums = Album.all
  end
end
