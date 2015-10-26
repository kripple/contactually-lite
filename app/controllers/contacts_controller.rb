class ContactsController < ApplicationController
	include Parser
	
	def index
		@contacts = Contact.all
	end

	def new
	end

	def create
	end

	def destroy
	end

	def filter
	end

	private

	def contact_params
	end
end