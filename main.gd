extends Control

@onready var tempo_editor = %TempoEditor
@onready var start_button= %StartButton

var running:bool = false
var current_beat:float = 0.0

# https://en.wikipedia.org/wiki/Swing_time

var default_swing_ratio:float = 1.0


var default_swing_reciprocal_note_value:int = 8


var instrument:Instrument = null
var track:Track = null

func _ready() -> void:

	# Dummy instrument for testing
	instrument = Instrument.new("Metronome", self)
	instrument.add_sound(33, load("res://sounds/33-MetronomeClick-high.wav"), "Tick")
	instrument.add_sound(34, load("res://sounds/34-MetronomeBell-SC-88.wav"), "Beat")

	# Dummy track for testing
	track = Track.new("Test Track", instrument)
	var bar = track.add_bar(4, 4)
	bar.add_note(1, 1, 34)
	bar.add_note(2, 1, 33)
	bar.add_note(3, 1, 33)
	bar.add_note(4, 1, 33)

	print("Current tempo:", tempo_editor.tempo)
 

func _on_resized() -> void:

	# Adapts GUI scale for high DPIs
	var screen_dpi = DisplayServer.screen_get_dpi()
	if screen_dpi > 100:
		get_window().content_scale_factor = screen_dpi/180.0


func _on_stop_button_pressed() -> void:
	instrument.play_sound(34)


func _on_start_button_pressed() -> void:
	instrument.play_sound(33)


func _on_pause_button_pressed() -> void:
	instrument.play_sound(34)
	instrument.play_sound(33)
	
	
	
	
