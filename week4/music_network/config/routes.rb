Rails.application.routes.draw do

	get '/', to: 'concert#home'

	get '/concert', to: 'concert#index'

	get '/concert/show', to: 'concert#show'

end
