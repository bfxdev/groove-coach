## Class representing a note in a bar on a musical track
class_name TrackNote

# The time at which the note starts in beats within the bar
# This is the beat number (starting at 1), not the time in seconds, and is kept as a fraction
# to allow for more precise timing and display as a classical music score.
# For example, if the note starts at the second beat of the bar, this would be 2/1.
# The value is initialized only when the note is placed in a bar
var start_beat:IntegerRatio

## Duration of the note in beats (not used in this implementation)
var duration:IntegerRatio

## Sound of the note corresponding to the selected instrument or its mapping
var sound:int

## Accent of the note, which determines how strongly it is played, from -2 to 2
## Normal accent is 0, stronger accents can be positive, and weaker accents can be negative
var accent:int = 0

## Pitch of the note, in MIDI note number (not used in this implementation)
var pitch:int = 0

## Class constructor
func _init(init_sound:int, init_accent:int=0) -> void:
	accent = init_accent
	sound = init_sound
