Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "sites#home"

  get '/sites', to: 'sites#home'

  get '/books', to: 'books#home'

  get '/loans', to: 'loans#home'

  get '/notaries', to: 'notaries#home'
end
