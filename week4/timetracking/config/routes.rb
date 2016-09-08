Rails.application.routes.draw do

	get '/', to: 'projects#home'

	get '/contact' , to: 'projects#email'

	get '/say_name/:name' , to: 'site#say_name'

	post "/projects", to: "projects#create"

	get '/projects', to: 'projects#index'

	get '/projects/new', to: 'projects#new'

	get '/projects/:id', to: 'projects#show'


end





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html