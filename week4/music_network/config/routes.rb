Rails.application.routes.draw do

	root :to=> 'concerts#home'

  resources :concerts do 
	resources :comments

  end

end
