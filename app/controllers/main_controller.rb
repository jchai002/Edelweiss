class MainController < ApplicationController
  def index
  	@home_page = true
  end 

  def lyrics
  	@default_song = Song.first
  	@albums = Album.all
  end
end
