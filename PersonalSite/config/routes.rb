Rails.application.routes.draw do

  root "sites#home"

  get '/abouts', to: 'abouts#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
