class SuggestionspacesController < ApplicationController
	def new
		@suggestionspace = Suggestionspace.new
		@coworkingspace = Coworkingspace.find(params[:coworkingspace_id])
	end 
end
