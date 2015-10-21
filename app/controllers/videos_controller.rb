class VideosController < ApplicationController
  before_action :set_video, only: [:show, :edit, :update, :destroy]

  # GET /videos
  # GET /videos.json
  def index
    @videos = Video.order('created_at')
  end

  # GET /videos/new
  def new
    @video = Video.new
  end


  # POST /videos
  # POST /videos.json
  def create
    @video = Video.new(video_params)
    @video.convert_to_embed_url
      if @video.save
        redirect_to videos_path
      end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @video.destroy
    respond_to do |format|
      format.html { redirect_to videos_url, notice: 'Master Jerry Says: Video was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video
      @video = Video.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_params
      params.require(:video).permit(:name,:url,:upload)
    end
end
