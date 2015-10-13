class MusicsController < ApplicationController
    before_action :set_music, only: [:show, :edit, :update, :destroy]
  # GET /musics
  # GET /musics.json
  def index
    @musics = Music.all
  end

  # GET /musics/new
  def new
    @music = Music.new
  end


  # POST /musics
  # POST /musics.json
  def create
    @music = Music.new(music_params)
      if @music.save
        redirect_to musics_path
      end
  end

  # DELETE /musics/1
  # DELETE /musics/1.json
  def destroy
    @music.destroy
    respond_to do |format|
      format.html { redirect_to musics_url, notice: 'Music was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

    def set_music
      @music = Music.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def music_params
      params.require(:music).permit(:code)
    end

end
