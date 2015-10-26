# module Parser

#   extend self

#   def get_attributes(file)
#     data = CSV.read(file).to_a
#     binding.pry 
#     headers = data.pop
#     binding.pry
#     data.map do |row|
#       binding.pry
#       row
#     end

#     # :first_name
#     # :last_name
#     # :email_address
#     # :phone_number
#     # :company_name
#     # return attributes
#   end


# 	def import(file)
#     data = CSV.read(file).to_a
#     # CSV.read returns a CSV table that's in the format of an array of arrays & the first row is the headers. Need to convert to array to use array methods
#     headers = data.pop # probably?
#     data.map do |row|
#       row
#     end
#   end

#   def save(file, data)
#     CSV.open(file,"w") do |csv|
#       data.each do |row|
#         csv << [row] # takes arrays only. CSV needs to know where the comma column separators go
#       end
#     end
#     #File.write(file, new_file)
#   end
# end








