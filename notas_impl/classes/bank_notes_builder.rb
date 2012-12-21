class BankNotesBuilder

	def build_notes_for_values( *values )
		notes = []
		values.each do |value|
			bank_note = BankNote.new(value)
			notes << bank_note
		end
		notes
	end

end