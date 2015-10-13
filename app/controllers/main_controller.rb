class MainController < ApplicationController
  def index
  	@home_page = true
  end 

  def lyrics
  	@albums = Album.all
  end
end
