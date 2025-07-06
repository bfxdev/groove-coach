extends Node

# https://www.quora.com/What-is-the-difference-between-4-4-time-and-2-2-time-and-how-does-this-affect-the-music
# https://fr.wikipedia.org/wiki/Notes_in%C3%A9gales


# Class representing a musical track, which contains bars and notes
class_name Track

class TrackNote:

	# The time at which the note starts in beats within the bar
	# This is the beat number (starting at 1), not the time in seconds, and is kept as a fraction
	# to allow for more precise timing and display as a classical music score.
	# For example, if the note starts at the second beat of the bar, this would be 2/1.
	var start_beat_numerator:int
	var start_beat_denominator:int

	# The accent of the note, which determines how strongly it is played, from -2 to 2
	# Normal accent is 0, stronger accents can be positive, and weaker accents can be negative
	var accent:int = 0

	# The sound of the note corresponding to the selected instrument or its mapping
	var sound:int

	# The duration of the note, in beats (not used in this implementation)
	# var duration_beat_numerator:int
	# var duration_beat_denominator:int

	# The pitch of the note, in MIDI note number (not used in this implementation)
	# var pitch:int = 0

class Bar:

	# The time signature can be set differently for each bar
	# https://en.wikipedia.org/wiki/Time_signature

	# Times signature: The upper numeral indicates how many of the note values constitute a bar
	var beat_count:int = 4

	# Time signature: The lower numeral indicates the note value that the signature is counting.
	# This number is always a power of 2, usually 2, 4 or 8, but less often 16 is also used, usually
	# in Baroque music. 2 corresponds to the half note (minim), 4 to the quarter note (crotchet),
	# 8 to the eighth note (quaver), 16 to the sixteenth note (semiquaver).
	# https://en.wikipedia.org/wiki/Note_value
	var beat_reciprocal_note_value:int = 4

	# The unordered list of notes in this bar (ordered by their start time)
	var notes:Array[TrackNote] = []

	# Add a note to the bar
	func add_note(beat_numerator:int, beat_denominator:int, sound:int, accent:int=0) -> TrackNote:
		var note:TrackNote = TrackNote.new()
		note.start_beat_numerator = beat_numerator
		note.start_beat_denominator = beat_denominator
		note.accent = accent
		note.sound = sound
		notes.append(note)
		return note

# The instrument of this track, which determines the sound of the notes
var instrument:Instrument

# The ordered list of bars in this track
var bars:Array[Bar] = []

# The name of the track, which is used for display purposes
var display_name:String = "Track"

# Adds an empty bar to the track
func add_bar(beat_count:int, beat_reciprocal_note_value:int) -> Bar:
	var bar:Bar = Bar.new()
	bar.beat_count = beat_count
	bar.beat_reciprocal_note_value = beat_reciprocal_note_value
	bars.append(bar)
	return bar

# Class constructor
func _init(init_display_name:String, init_instrument:Instrument) -> void:
	self.display_name = init_display_name
	self.instrument = init_instrument
