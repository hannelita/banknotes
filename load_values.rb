require './notas_impl/classes/bank_note'
require './notas_impl/classes/file_loader'
require './notas_impl/classes/bank_notes_builder'
require './notas_impl/classes/notes_combinator'

begin
	path = ARGV[0]
	loader = FileLoader.new(path)
	values_from_file = loader.load
	combinator = NotesCombinator.new(1, 2, 5, 10, 20, 50, 100)

	combinator.permute(10)
	p combinator.count


	# conference_builder = ConferenceBuilder.new(tracks_number.to_i)
	# conference = conference_builder.build_conference(talks_from_file)
	# conference.data
rescue Exception => msg  
	puts "A problem ocurred: #{msg}"
end

