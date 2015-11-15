class ConcertsController < ApplicationController
	def index
		
		@concerts_list = Concert.order(created_at: :desc)
		@comments_list = Comment.order(created_at: :desc)
		render"index"
	end

	def new
		@concerts = Concert.new
		render "new"
	end

	def create 
		@concerts = Concert.new(concert_params)
		if @concerts.save
			redirect_to "/concerts"
		else 
			render"/concerts/new"
		end
	end

	def show
		id = params[:id]
		@concerts = Concert.find_by(id: id)
		render "show"
	end




	private 
	def concert_params 
		params.require(:concert).permit(:artist, :venue, :date, :city, :price, :description)
	end
end
