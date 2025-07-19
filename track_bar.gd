extends Node

# https://www.quora.com/What-is-the-difference-between-4-4-time-and-2-2-time-and-how-does-this-affect-the-music
# https://fr.wikipedia.org/wiki/Notes_in%C3%A9gales

## Class representing a bar in a musical track
class_name TrackBar

# The time signature can be set differently for each bar
# https://en.wikipedia.org/wiki/Time_signature

## Times signature: The upper numeral indicates how many of the note values constitute a bar
var beat_count:int = 4

# Time signature: The lower numeral indicates the note value that the signature is counting.
# This number is always a power of 2, usually 2, 4 or 8, but less often 16 is also used, usually
# in Baroque music. 2 corresponds to the half note (minim), 4 to the quarter note (crotchet),
# 8 to the eighth note (quaver), 16 to the sixteenth note (semiquaver).
# https://en.wikipedia.org/wiki/Note_value
var beat_reciprocal_note_value:int = 4

# List of notes in this bar ordered by their start beat
var notes:Array[TrackNote] = []

# Add a note to the bar
func add_note(beat_numerator:int, beat_denominator:int, sound:int, accent:int=0) -> TrackNote:
	var note:TrackNote = TrackNote.new(sound, accent)
	note.start_beat = IntegerRatio.new(beat_numerator, beat_denominator)
	notes.append(note)
	return note
