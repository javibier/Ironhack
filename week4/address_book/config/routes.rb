Rails.application.routes.draw do

	get '/', to: 'contacts#home'

	get '/contacts', to: 'contacts#index'

	get '/new', to: 'contacts#new'

    post "/contacts/", to: "contacts#create"

    get '/contatcs/:name' to: 'contacts#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
