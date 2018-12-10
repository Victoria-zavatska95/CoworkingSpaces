class CoworkingfiltersController < ApplicationController
def new
	@coworkingfilter = Coworkingfilter.new
end	

def create
	@coworkingfilter = Coworkingfilter.new(coworkingfilterparams)
	if @coworkingfilter.save
	redirect_to coworkingspaces_path(city: @coworkingfilter.city, beginDate: @coworkingfilter.beginDate, finishDate: @coworkingfilter.finishDate)
     else
     	render 'new'
	end


end
private def coworkingfilterparams
	params.require(:coworkingfilter).permit(:city, :beginDate, :finishDate)
	end

end
