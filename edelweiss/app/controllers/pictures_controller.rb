class PicturesController < ApplicationController

  def index
  	@pictures = Picture.all
  end

  def show
    @picture = Picture.find_by(id: params[:id])
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.create(picture_params)
    @album = Album.all.last
    @picture.album_id = @album.id
    if @picture.save
      # send success header
      render json: { message: "success", fileID: @picture.id }, :status => 200
    else
      #  you need to send an error header, otherwise Dropzone
      #  will not interpret the response as an error:
      render json: { error: @picture.errors.full_messages.join(',')}, :status => 400
    end     
  end

  def destroy
    @picture = Picture.find(params[:id])
    if @picture.destroy    
      render json: { message: "File deleted from server" }
    else
      render json: { message: @picture.errors.full_messages.join(',') }
    end
  end

  private
  def picture_params
    params.require(:picture).permit(:name,:link)
  end
end