class Contact < ActiveRecord::Base
	validates_presence_of :first_name, :last_name, :email_address, :phone_number, :company_name

	before_save :normalize_phone_number

	def full_name
		"#{self.first_name} #{self.last_name}"
	end

	def display_phone_number
		num = self.phone_number  
		if self.extension
			"(#{num.slice(0,3)})#{num.slice(3,3)}-#{num.slice(6,4)} x#{self.extension}"
		else
			"(#{num.slice(0,3)})#{num.slice(3,3)}-#{num.slice(6,4)}"
		end
	end

	private

	def normalize_phone_number
		set_extension if self.phone_number.downcase.include?('x')
		set_international		
		self.phone_number = self.phone_number.gsub(/[()-. ]/,'')
	end

	def set_extension
		self.extension = self.phone_number.gsub(/.+x/,'')
		self.phone_number = self.phone_number.gsub(/x.+/,'')
	end

	def set_international
		if self.phone_number.match(/\A1[-]/) 
			self.international = true
		else 
			self.international = false
		end
		self.phone_number = self.phone_number.gsub(/\A1[-]/,'')
	end
end

