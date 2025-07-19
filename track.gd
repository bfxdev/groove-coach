extends Node

# https://www.quora.com/What-is-the-difference-between-4-4-time-and-2-2-time-and-how-does-this-affect-the-music
# https://fr.wikipedia.org/wiki/Notes_in%C3%A9gales

## Class representing a musical track, which contains bars and notes
class_name Track

## Instrument of this track, which determines the sound of the notes
var instrument:Instrument

## Ordered list of bars in this track
var bars:Array[TrackBar] = []

## Name of the track, which is used for display purposes
var display_name:String = "Track"

## Adds an empty bar to the track
func add_bar(beat_count:int, beat_reciprocal_note_value:int) -> TrackBar:
	var bar:TrackBar = TrackBar.new()
	bar.beat_count = beat_count
	bar.beat_reciprocal_note_value = beat_reciprocal_note_value
	bars.append(bar)
	return bar

## Class constructor
func _init(init_display_name:String, init_instrument:Instrument) -> void:
	self.display_name = init_display_name
	self.instrument = init_instrument

## Returns the 
