require "sinatra"
require "sinatra/reloader" if development?
require "imdb"



get"/" do

  erb :home

end

post "/search_results" do

	the_search = Imdb::Search.new( params[:movie_search])

	twenty_movies = the_search.movies.take(20)
    twenty_movies.delete_if { |the_movie| the_movie.poster == nil}
    @movies = twenty_movies.take(9)

	erb :results
	
end





