class CommentsController < ApplicationController
	def new
		id = params[:concert_id]
		@concert = Concert.find_by(id: id)
		@comment = @concert.comments.new
		render "new"
	end
	def create 
		id = params[:concert_id]
		@concert = Concert.find_by(id: id)
		@comment = @concert.comments.new(comments_params)
		if @comment.save
			redirect_to "/concerts"
		else 
			render "concerts/#{@concert.id}/comments/new"
		end
		
	end

	private
	def comments_params
		params.require(:comment).permit(:description)
	end
end
