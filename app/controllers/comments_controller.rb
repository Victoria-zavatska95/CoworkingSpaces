class CommentsController < ApplicationController

	def new
		@comment = Comment.new
		@coworkingspace = Coworkingspace.find(params[:coworkingspace_id])
	end 

	def create
		@coworkingspace = Coworkingspace.find(params[:coworkingspace_id])
		@comment = @coworkingspace.comments.build(commentparams)
		@comment.user_id = current_user.id
		@comment.created_datetime = DateTime.now
		if @comment.save
		redirect_to coworkingspace_path(@coworkingspace.id)
		else 
		render 'new'
		end	
	end	

	def destroy
		 @comment.destroy
    redirect_to coworkingspace_path(@coworkingspace.id)
    end

	private def commentparams 
	params.require(:comment).permit(:coworkingspace_id, :message, :user_id, :image, :created_date)
	end
end
