# Rails.application.routes.draw do

# 	get '/', to: 'begin#home'
    
#   get 'textinspections/new', to: 'textinspections#new'

# end

Rails.application.routes.draw do
  root "begin#home"

  get "/textinspections/new", to: "textinspections#new"


  post "/textinspections/", to: "textinspections#create"
  

end
