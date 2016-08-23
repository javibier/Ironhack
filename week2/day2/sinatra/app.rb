require "sinatra"

get "/" do
	"hello <a href='/company'> See company page </a>"
end

get "/company" do
	"We are looking for investments,  <a href='/company/about'> please visit our about page. </a>"
end

# get "/company/about" do
# 	
# end

get "/company/about" do
  
  erb :about 
end

get "/pizza" do
   @pizza_ingredients = ["Cheese", "Tomatoe Sauce", "Sausage"]
  erb :favorite_pizza
end	