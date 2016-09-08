class TimeEntriesController < ApplicationController

	def index

     @project = Project.find(params[:project_id])

     @time_entries = @project.time_entries.where(
     	date: Time.now.beginning_of_month..Time.now.end_of_month
     	)

	end

	def new

		@project = Project.find(params[:project_id])

		@time_entry = @project.time_entries.new

	end
		
end
