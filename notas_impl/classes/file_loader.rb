class FileLoader
	def initialize(path)
		@path = path
		@values = []
	end
	def load
		notas_file = File.open(@path)
		notas_file.readlines.each do |line|
			value = line.split(",").collect(&:strip)
			@values << value
		end
		@values
	end
end