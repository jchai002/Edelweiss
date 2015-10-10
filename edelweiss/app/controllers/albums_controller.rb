class AlbumsController < ApplicationController
  def index
    @albums=Album.all
  end

  def show
    @album=Album.find_by(id: params[:id])
    @picture= Picture.new
  end

  def new
    @album=Album.new
  end

  def create
    @album=Album.new(album_params)
    if @album.save
      redirect_to album_path(@album.id)
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
