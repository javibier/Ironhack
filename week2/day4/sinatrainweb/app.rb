require 'sinatra'

require_relative("lib/blog.rb")
require_relative("lib/post.rb")

seconds_in_day = 60 * 60 * 24

the_blog = Blog.new

post1 = Post.new("Javier's favorite car", Time.now - 10 * seconds_in_day, "Corvette")
post2 = Post.new("Anthony's favorite car", Time.now + 10 * seconds_in_day, "Shelby Mustang")
post3 = Post.new("Randy's favorite car", Time.now - 20 * seconds_in_day, "Ferrari")
post4 = Post.new("Mom's favorite car", Time.now + 20 * seconds_in_day, "Suburban")
post5 = Post.new("Elgardo's favorite car", Time.now + 30 * seconds_in_day, "Infinity")
post6 = Post.new("Richard's favorite car", Time.now - 30 * seconds_in_day, "Austin Martin")
post7 = Post.new("Sammy's favorite car", Time.now - 40 * seconds_in_day , "Rolls Royce")
post8 = Post.new("David's favorite car", Time.now + 40 * seconds_in_day, "Hummer")
post9 = Post.new("Emmanuel's favorite car", Time.now - 50 * seconds_in_day, "Challenger")


the_blog.add_post(post1) 
the_blog.add_post(post2) 
the_blog.add_post(post3) 
the_blog.add_post(post4) 
the_blog.add_post(post5) 
the_blog.add_post(post6) 
the_blog.add_post(post7) 
the_blog.add_post(post8) 
the_blog.add_post(post9) 


# the_blog.print_all_posts
# p the_blog.sort_all_posts



get "/" do
  @posts = the_blog.print_all_posts

  erb :blog
end


# input = nil

# while input != "exit"
#   puts "\nType [next] to see the next page or [prev] to see the previous page."
#   input = gets.chomp

#   if input == "next"
#     the_blog.go_next
#   elsif input == "prev"
#     the_blog.go_prev
#   end

#   the_blog.print_current_page
# end