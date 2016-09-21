Rails.application.routes.draw do
  resources :ingredients
  resources :sandwiches

  post '/sandwiches/:id/', to: 'sandwiches#add' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end