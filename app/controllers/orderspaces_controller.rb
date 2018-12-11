class OrderspacesController < ApplicationController
	before_action :find_order!, only: [:show]
def new
		@orderspace = Orderspace.new
		@coworkingspace = Coworkingspace.find(params[:coworkingspace_id])
		@orderspace.coworkingspace_id = @coworkingspace.id
	end

	def create

		@orderspace = current_user.orderspaces.build(orderspaceparams)
		if @orderspace.save
		redirect_to orderspace_path(@orderspace.id)
		else
		render 'new'
		end	
	end

	def show

	end	

	private def orderspaceparams
		params.require(:orderspace).permit(:user_id, :coworkingspace_id, :peopleNumber, :beginDate, :finishDate)
	end	

	def find_order
    	@orderspace = Orderspace.find(params[:id])
    end	
end
