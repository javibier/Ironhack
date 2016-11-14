Rails.application.routes.draw do

  get 'home/name:string'

  get 'home/image:string'

  get 'home/description:text'

  root "sites#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
