class AnnouncementsController < ApplicationController
before_action :set_announcement, only: [:show, :edit, :update, :destroy]

	def new
		@announcement= Announcement.new
	end

	def create
    @announcement = Announcement.new(announcement_params)
      if @announcement.save
        redirect_to root_path
      end
  	end

  def edit
  end

  def update
    respond_to do |format|
      if @announcement.update(announcement_params)
        format.html { redirect_to root_path, notice: 'announcement was successfully updated.' }
      end
    end
  end

  def destroy
    if @announcement.destroy    
        respond_to do |format|
        format.html { redirect_to root_url, notice: 'announcement was successfully deleted.' }
        format.json { head :no_content }
      end
    end
  end

private
	# Use callbacks to share common setup or constraints between actions.
	def set_announcement
	  @announcement = Announcement.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def announcement_params
	  params.require(:announcement).permit(:title,:body,:picture)
	end

end
