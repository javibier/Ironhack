class CommentsController < ApplicationController

	def index

        @comments = Comment.all
        render :index
        
	end

	def new

	end

	def create

	end
end
