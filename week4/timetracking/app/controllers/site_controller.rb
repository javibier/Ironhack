class SiteController < ApplicationController

	def home

      render 'home' # name of view template app/views/site/home.html.erb
	
	end

	def email

      render 'email'

    end

end
