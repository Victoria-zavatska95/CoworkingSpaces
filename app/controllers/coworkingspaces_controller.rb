class CoworkingspacesController < ApplicationController
before_action :authenticate_user!

	def new
		@coworking_space = CoworkingSpace.new
	end

	def create
		@coworking_space = current_user.coworkingspaces.build(coworkingspacesparams)
		if @coworking_space.save
			flash[:notice] = "You successfully created coworking space"
			redirect_to root_path
		else
		flash[:error] = "Failed to create coworking space"	
		render "new"	
	end

	private def coworkingspacesparams
		params.require(:coworkingparams).permit(:user_id, :price, :area, :description)
    end

end
