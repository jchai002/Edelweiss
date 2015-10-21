class AdminController < ApplicationController
	def panel
	end

	def login
	 @admin= Admin.new
	end

	def authorize
		admin = Admin.first
		if  admin.authenticate(params[:admin][:password])
	      session[:admin] = admin
	      redirect_to root_url
	    else
	      flash[:login_error] = "Master Jerry Says: Incorrect Password"
	      redirect_to :back
	    end
	end

	def logout
		session.clear
		redirect_to root_url
	end

end
