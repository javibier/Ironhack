Rails.application.routes.draw do

	get '/', to: 'users#home'

	get '/users', to: 'users#show'

	get '/new', to: 'users#new'

	post "/users/", to: "users#create"

	get '/products', to: 'products#index'

	get '/products/new', to: 'products#new'

	post "/products/", to: "products#create"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
