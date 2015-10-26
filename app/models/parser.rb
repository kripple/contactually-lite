module Parser
	def import(file)
    data = CSV.read(file).to_a
    # CSV.read returns a CSV table that's in the format of an array of arrays & the first row is the headers. Need to convert to array to use array methods
    data.map do |row|
      row
    end
  end

  def save(file, data)
    CSV.open(file,"w") do |csv|
      data.each do |row|
        csv << [row] # takes arrays only. CSV needs to know where the comma column separators go
      end
    end
    #File.write(file, new_file)
  end
end