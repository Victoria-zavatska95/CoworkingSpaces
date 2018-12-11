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

	def calculate
		@coworkingspace = Coworkingspace.find(params[:coworkingspace_id])
		@orderspace = Orderspace.new
		@orderspace.totalSum = 0
		respond_to do |format|
		format.html { render :template => "orderspaces/new" }
		format.json { head :no_content }
	end	
end
end
