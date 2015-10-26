class ContactsController < ApplicationController
	def index
		@contacts = Contact.all
	end

	def new
		@contact = Contact.new
	end

	def create
		file = params[:contact][:file].tempfile
		data = SmarterCSV.process(file, :col_sep => "\t")
		data.each do |contact_attributes|
			@contact = Contact.create(contact_attributes)
		end
		redirect_to :root
	end

	def destroy
		if request.xhr?
			binding.pry
		end
	end

	def filter
		if request.xhr?
			binding.pry
		end
	end

	private

	def contact_params
	end
end

