class OrderspacesController < ApplicationController
def new
		@orderspace = Orderspace.new
		@coworkingspace = Coworkingspace.find(params[:coworkingspace_id])
	end

	def create
		@orderspace = current_user.orderspaces.build(orderspaceparams)
		if @orderspace.save
		redirect_to coworkingspaces_path
		else
		render 'new'
		end	
	end	

	private def orderspaceparams
		params.require(:orderspace).permit(:user_id, :coworkingspace_id, :peopleNumber, :beginDate, :finishDate, :totalSum)
	end	
end
