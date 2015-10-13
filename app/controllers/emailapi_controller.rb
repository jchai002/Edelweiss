class EmailapiController < ApplicationController

	def index
	end

	def subscribe
	gibbon = Gibbon::API.new(ENV['gibbon_api_key'])
	gibbon.lists.subscribe({:id => ENV['gibbon_list_id'], :email => {:email => params[:email][:address]}})
		respond_to do |format|
		  format.js {render inline: "location.reload();" }
		end
	end

end