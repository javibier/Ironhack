require_relative("../lib/blog.rb")
require_relative("../lib/post.rb")

RSpec.describe Blog do
	
	describe "add_post" do
	it "returns false if the post array is empty" do
		the_blog = Blog.new
        post1 = Post.new("Javier's favorite car", Time.now, "Corvette")
        the_blog.add_post(post1)

    expect( the_blog.posts).not_to eq([])

      end
    end
    
    describe "sort_all_posts" do
	it "returns false if oldest post not first" do
		the_blog = Blog.new
        post8 = Post.new("David's favorite car", Time.now, "Hummer")
        the_blog.sort_all_posts{ |a, b| b.date<=>a.date}



    expect( the_blog.posts[0].title).to eq(post1.title)

      end
    end


end