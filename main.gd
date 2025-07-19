extends Control

@onready var tempo_editor = %TempoEditor
@onready var start_button= %StartButton


var running:bool = false
var current_beat:float = 0.0
var current_bar:int = 0

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


func _process(delta: float) -> void:
	if running:

		# Updates the current beat based on the tempo
		var previous_beat = current_beat
		current_beat += delta * tempo_editor.tempo / 60.0
		if current_beat >= 4.0:
			current_beat -= 4.0
			previous_beat -= 4.0
		print("Current beat:", current_beat)

		if previous_beat <= 0.0 and current_beat > 0.0:
			instrument.play_sound(34)  # Play beat sound

		if previous_beat <= 1.0 and current_beat > 1.0 or \
		   previous_beat <= 2.0 and current_beat > 2.0 or \
		   previous_beat <= 3.0 and current_beat > 3.0:
			# Play the beat sound when crossing the first beat of the bar
			instrument.play_sound(33)  # Play click sound


func _on_resized() -> void:

	# Adapts GUI scale for high DPIs
	var screen_dpi = DisplayServer.screen_get_dpi()
	if screen_dpi > 100:
		get_window().content_scale_factor = screen_dpi/180.0


func _on_stop_button_pressed() -> void:
	running = false
	current_beat = 0.0


func _on_start_button_pressed() -> void:
	running = true


func _on_pause_button_pressed() -> void:
	running = false
