class OrderspacesController < ApplicationController
def new
		@orderspace = Orderspace.new
		@coworkingspace = Coworkingspace.find(params[:coworkingspace_id])
	end 
end
