Rails.application.routes.draw do

	root :to=> 'projects#home'

resources :projects do 
	resources :time_entries
end

end





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html