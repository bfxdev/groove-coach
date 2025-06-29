extends Node

class_name Instrument
# This class represents an un-pitched percussion instrument

# One instrument can have multiple sounds, each represented by a Sound object
class Sound:

	# An audio stream object containing the sound sample to be played
	var audio_stream:AudioStream = null

	# An AudioStreamPlayer to play the sound
	var audio_stream_player:AudioStreamPlayer

	# The display name of the instrument, used for UI purposes
	var display_name:String

	## Constructor to initialize the sound and display name
	func _init(init_audio_stream:AudioStream, init_display_name:String, parent:Node) -> void:
		audio_stream = init_audio_stream
		display_name = init_display_name
		audio_stream_player = AudioStreamPlayer.new()
		parent.add_child(audio_stream_player)
		audio_stream_player.stream = audio_stream

	# Play the sound using an AudioStreamPlayer
	func play():
		if audio_stream_player.stream:
			audio_stream_player.play()


# Dict of Sound objects indexed by their ID
var sounds:Dictionary[int, Sound] = {}

var display_name:String = "Instrument"

var parent:Node = null

func _init(init_display_name:String, init_parent:Node) -> void:
	# Custom initialization here
	sounds = {}
	display_name = init_display_name
	parent = init_parent

func add_sound(sound_id:int, audio_stream:AudioStream, sound_display_name:String) -> Sound:
	var new_sound:Sound = Sound.new(audio_stream, sound_display_name, parent)
	sounds[sound_id] = new_sound
	return new_sound

func play_sound(sound_id:int):
	if sounds.has(sound_id):
		sounds[sound_id].play()
	else:
		print("Sound ID not found: ", sound_id)
