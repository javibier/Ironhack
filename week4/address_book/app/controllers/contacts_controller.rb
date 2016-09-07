class ContactsController < ApplicationController

	def home

		render 'home'
		
    end

    def index

     	@contacts = Contact.all

    end

    def new

    	render 'new'

    end

    def create

	  # render(:text => params[:contact].inspect)
	  contact = Contact.new(
	  	:name => params[:contact][:name],
	  	:address => params[:contact][:address],
	  	:phone_number => params[:contact][:phone],
	  	:email_address => params[:contact][:email])

	  contact.save
	  redirect_to("/contacts")

	  # render(:text => contact.attributes)

    end

end
