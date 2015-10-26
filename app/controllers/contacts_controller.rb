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
		Contact.find_by(id:params[:id]).destroy
		redirect_to :root and return if !request.xhr?
		render :nothing => true
	end

	def filter
		if request.xhr?
			binding.pry
		end
	end
end

