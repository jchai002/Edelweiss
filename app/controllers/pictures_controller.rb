class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]


  def index
  	@pictures = Picture.order('created_at')
  end

  def show
    @picture = Picture.find_by(id: params[:id])
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.create(picture_params)
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
    if @picture.destroy    
        respond_to do |format|
        format.html { redirect_to pictures_url, notice: 'Picture was successfully deleted.' }
        format.json { head :no_content }
      end
    end
  end

  private

  def set_picture
    @picture = Picture.find(params[:id])
  end

  def picture_params
    params.require(:picture).permit(:name,:link)
  end

end