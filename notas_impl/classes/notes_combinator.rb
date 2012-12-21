class NotesCombinator

	attr_accessor :notes, :count

	def initialize( *values )
		notes_builder = BankNotesBuilder.new
		@notes = notes_builder.build_notes_for_values( *values )	
		@count = 0
	end

	def combine(value)
		@notes.each do |note|
			find_mdc(note, value)
		end
	end

	def find_mdc(note, value)
		
	end

end