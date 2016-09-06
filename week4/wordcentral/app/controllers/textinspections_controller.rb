# class TextinspectionsController < ApplicationController

# 	def new

# 	  render 'new'

# 	end

# 	def create

# 	  render plain: params[:text_inspection][:user_text]

# 	end

# end

class TextinspectionsController < ApplicationController

	def new

	  render 'new'

	end

	def create

	  @text = params[:text_inspection][:user_text]

	  @word_count = @text.split(" ").length

	  render plain: @word_count

	end

	# def results

	#   @text = params[:user_text]

	#   render plain: 

	# end

end
