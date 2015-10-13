class AdminController < ApplicationController
	def login
	 @admin= Admin.new
	end

	def authorize
		admin = Admin.first
		if  admin.authenticate(params[:admin][:password])
	      session[:admin] = admin
	    else
	      flash[:login_error] = "Incorrect password"
	    end
	    redirect_to root_url
	end

	def logout
		session.clear
		redirect_to root_url
	end

end
