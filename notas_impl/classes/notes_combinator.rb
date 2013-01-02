class NotesCombinator

	attr_accessor :notes, :count

	def initialize( *values )
		notes_builder = BankNotesBuilder.new
		@notes = notes_builder.build_notes_for_values( *values )	
		@combos = {}
		@combos_value = []
		@raw_values = *values
	end

	def permute(value)
		@count = 0
		qtd = 1
		while (qtd < value + 1)
			combos = @raw_values.repeated_combination(qtd)
			combos.each do |combo|
				res = combo.reduce(0) do |sum, value|
					res = sum + value
					res
				end
				#p combo if res == value
				@count = @count+1 if res == value
			end
			qtd  = qtd + 1
		end
	end

end