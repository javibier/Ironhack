class Blog
	def initialize
		@post = []
	end

	def the_post(the_text)
		@post.push(the_text)
	end

	def publish
	    @post.each do |x|
	    puts x.title
	    puts "****************"
	    puts x.text
	    puts "________________"
	   end
	end

end