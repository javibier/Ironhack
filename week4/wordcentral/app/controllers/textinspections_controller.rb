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

	  render plain: @text

	end


end
