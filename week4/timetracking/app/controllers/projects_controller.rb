class ProjectsController < ApplicationController

	# these create the actions
	def home

      render 'home' # name of view template app/views/site/home.html.erb
	
	end

	def index 

		@projects = Project.all

	end

	def show

    	@project = Project.find_by(id: params[:id])
    	unless @project
    		render 'no_projects_found'
        end
    end

    def new

    	@project = Project.new

    end

    def create

    	@my_project = Project.new(
    	  :name => params[:project][:name],
    	  :description => params[:project][:description]
    	)

        @my_project.save

        redirect_to "/projects/#{@my_project.id}"
    end

end
