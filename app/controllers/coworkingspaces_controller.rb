class CoworkingspacesController < ApplicationController
before_action :authenticate_user!
    
    def index
    	if !params[:city].blank? && !params[:beginDate].blank? && !params[:finishDate].blank?
    		@coworkingspaces = Coworkingspace.where(city: params[:city])
    			array_of_valid_spaces = @coworkingspaces.map do |space|
    				space.suggestions.each do |suggestion|
			if params[:beginDate] >= space.suggestion.beginDate && params[:finishDate] <= space.suggestion.finishDate
				 '#{space}'
				end

		end


		if array_of_valid_spaces.any?
			@coworkingspaces = array_of_valid_spaces
    	else 
    	@coworkingspaces = []	
    	end	
    end

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

 