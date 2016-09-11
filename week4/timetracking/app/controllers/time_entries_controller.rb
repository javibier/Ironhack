class TimeEntriesController < ApplicationController

	def edit

		@project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.find(params[:id])

	end	

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

	def create
		@my_project = Project.find(params[:project_id])
		time_entries = @my_project.time_entries.new(
			:hours => params[:time_entry][:hours],
			:minutes => params[:time_entry][:minutes],
			:comment =>params[:time_entry][:comment],
			:date => params[:time_entry][:date]
			)
		time_entries.save
    	

        redirect_to project_time_entries_path(@my_project)

	end	

	private

	    def time_entry_params
	    	params.require(:time_entry).permit(:hours, :minute, :date)
	    end	

		
end
