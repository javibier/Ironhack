class CommentsController < ApplicationController

	def index

        @comments = Comment.all
        render :index
        
	end

	def new

		@concert = Concert.find(params[:concert_id])

		@comments = @concert.comment.new

	end

	def create

		@concerts = Concert.find(params[:concert_id])
		comment = @concert.comments.new(
			:name => params[:comment][:name],
			:description => params[:comment][:description],
			
			)
		comment.save
    	

        redirect_to concert_comment_path(concert)

	end
end
