class ConcertController < ApplicationController

	def home

		@concerts = Concert.where(date: Time.now..Time.now.end_of_day)

	end

	def index

		@concerts = Concert.order(:artist)

	end

	def show

		@concerts = Concert.where(date: Time.now.beginning_of_month.next_month..Time.now.end_of_month.next_month)

	end	

end
