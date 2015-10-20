class EventsController < ApplicationController
before_action :set_event, only: [:show, :edit, :update, :destroy]

	def index
		@events= Event.order('created_at')
	end

	def new
		@event= Event.new
	end

	def create
    @event = Event.new(event_params)
      if @event.save
        redirect_to events_path
      end
  	end

  def edit
  end

  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to events_path, notice: 'Event was successfully updated.' }
      end
    end
  end

  def destroy
    if @event.destroy    
        respond_to do |format|
        format.html { redirect_to events_url, notice: 'Event was successfully deleted.' }
        format.json { head :no_content }
      end
    end
  end

private
	# Use callbacks to share common setup or constraints between actions.
	def set_event
	  @event = Event.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def event_params
	  params.require(:event).permit(:title,:body,:picture)
	end

end
