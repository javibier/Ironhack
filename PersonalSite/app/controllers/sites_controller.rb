class SitesController < ApplicationController

	def home

		render :home

    end

    def index

    	@users = User.all

    end

end
