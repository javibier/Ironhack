Rails.application.routes.draw do

	get '/', to: 'site#home'
	get '/contact' , to: 'site#email'

end





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html