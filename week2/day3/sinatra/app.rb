require "sinatra"
require "sinatra/reloader" if development?
require "pry"

get "/" do
	"hello <a href='/company'> See company page </a>"
end

get "/company" do
	"We are looking for investments,  <a href='/company/about'> please visit our about page. </a>"
end


get "/company/about" do
  
  erb :about 
end

get "/company/pizza" do
   @pizza_ingredients = ["Cheese", "Tomatoe Sauce", "Sausage"]
  erb :favorite_pizza
end	


users = [
  { :username => "starwars",     :name => "Star Wars",     :bio => "The official home of Star Wars on Twitter.",           :avatar => "https://pbs.twimg.com/profile_images/631535425333518336/D-i_GqpT_400x400.jpg" },
  { :username => "celinedion",   :name => "Celine Dion",   :bio => "Posts signed / Publications signées TC = Team Céline", :avatar => "https://pbs.twimg.com/profile_images/733642354565996544/JrzvO3Y7_400x400.jpg" },
  { :username => "javierechevarria", :name => "Javier Echevarria", :bio => "I live for my son.",                           :avatar => "https://pbs.twimg.com/profile_images/733642354565996544/JrzvO3Y7_400x400.jpg" }
]


# http://localhost:4567/users/ironhack
# http://localhost:4567/users/starwars
#                             --------
#                                |
#               ------------------
#               |
get "/users/:username" do
    #           |
    #           ------------------
    #                            |
  @user_name_string = params[:username]

  @the_user = users.find { |the_user| the_user[:username] == @user_name_string }

  # binding.pry

  if @the_user == nil
    erb :no_user
  else
    erb :user_profile
  end
end

# enable(:sessions)

# get"/session_test/:text" do
#   text = params[:text]
#   session[:saved_value] = text
# end

# get "/session_show" do
#   "Now in the session: " + session[:saved_value]
# end
