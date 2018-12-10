class CoworkingspacesController < ApplicationController
before_action :authenticate_user!
before_action :find_space, only: [:show]
    
    def index
    	if !params[:city].blank? && !params[:beginDate].blank? && !params[:finishDate].blank?
    		@coworkingspaces = Coworkingspace.where(city: params[:city])
    		array_of_valid_spaces = []
    			 @coworkingspaces.map do |space|
    			 	# binding.pry
    				space.suggestionspaces.each do |suggestion|
			  if Date.parse(params[:beginDate]) >= suggestion.beginDate && Date.parse(params[:finishDate]) <= suggestion.finishDate
				 array_of_valid_spaces.push(space)
			      end
				   end
				end
		     # if array_of_valid_spaces.any?
			   @coworkingspaces = array_of_valid_spaces
    	     # else 
    	     #   @coworkingspaces = []	
    	     # end	
					


		end
    end

	def new
		@coworkingspace = Coworkingspace.new
	end

	def create
		@coworkingspace = current_user.coworkingspaces.build(coworkingspacesparams)
		if @coworkingspace.save
			flash[:notice] = "You successfully created coworking space"
			redirect_to coworkingspace_path(@coworkingspace.id)
		else
		flash[:error] = "Failed to create coworking space"	
		render "new"
		end	
	end

		def show 

	end	

	private def coworkingspacesparams
		params.require(:coworkingspace).permit(:user_id, :image, :price, :area, :description, :city, :address, :hasKitchen, :hasMeetroom, :hasFreeWiFi, :hasFreeCookies, :peopleNumber)
    end

     def find_space
    	@coworkingspace = Coworkingspace.find(params[:id])
    end	

end

 