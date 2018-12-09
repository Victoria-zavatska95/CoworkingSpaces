class CoworkingspacesController < ApplicationController
before_action :authenticate_user!

	def new
		@coworkingspace = Coworkingspace.new
	end

	def create
		@coworkingspace = current_user.coworkingspaces.build(coworkingspacesparams)
		if @coworkingspace.save
			flash[:notice] = "You successfully created coworking space"
			redirect_to root_path
		else
		flash[:error] = "Failed to create coworking space"	
		render "new"
		end	
	end

	private def coworkingspacesparams
		params.require(:coworkingspace).permit(:user_id, :image, :price, :area, :description, :city, :address, :hasKitchen, :hasMeetroom, :hasFreeWiFi, :hasFreeCookies, :peopleNumber)
    end

end

 