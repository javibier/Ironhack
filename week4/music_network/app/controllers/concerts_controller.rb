class ConcertsController < ApplicationController

    def home

		@concerts = Concert.where(date: Time.now..Time.now.end_of_day)
		@concerts_this_month = Concert.where(date: Time.now.beginning_of_month.next_month..Time.now.end_of_month.next_month)

	end

	def index

		@concerts = Concert.all

	end

	def show

       @concerts = Concert.find_by(artist: params[:artist])
    	
    end
	
end
