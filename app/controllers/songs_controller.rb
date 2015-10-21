class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy, :showlyric]

  def index
  end
  # GET /songs/1
  # GET /songs/1.json
  def show
  end

  # GET /songs/new
  def new
    @song = Song.new
    @album = Album.find(params[:album_id])
  end

  def showlyrics
  end

  # GET /songs/1/edit
  def edit
  end

  # POST /songs
  # POST /songs.json
  def create

    @song = Song.new(song_params.merge(album_id: params[:song][:album_id]))
    respond_to do |format|
      if @song.save
        format.html { redirect_to @song, notice: 'Master Jerry Says: Song was successfully created.' }
      end
    end
  end

  # PATCH/PUT /songs/1
  # PATCH/PUT /songs/1.json
  def update
    respond_to do |format|
      if @song.update(song_params)
        format.html { redirect_to @song, notice: 'Song was successfully updated.' }
      end
    end
  end

  # DELETE /songs/1
  # DELETE /songs/1.json
  def destroy
    @song.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Song was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def song_params
      params.require(:song).permit(:title, :lyric, :album_id)
    end
end
