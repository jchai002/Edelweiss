class AlbumsController < ApplicationController
  def index
    @albums=Album.all
  end

  def new
    @album=Album.new
  end

  def create
    @album=Album.new(album_params)
    if @album.save
      render new_picture_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def album_params
    params.require(:album).permit(:name)
  end
end
