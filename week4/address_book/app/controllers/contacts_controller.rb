class ContactsController < ApplicationController

	def home

		render 'home'
		
    end

    def index

     	@contacts = Contact.order(:name)

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

    def show

    	@contacts = Contact.find(params[:name])

    end

end
