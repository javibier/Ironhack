class SiteController < ApplicationController

	def home

      render 'home' # name of view template app/views/site/home.html.erb
	
	end

	def email

      render 'email'

    end

    def say_name

      @name = params[:name]

      render 'say_name'

    end

end
