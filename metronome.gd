# See https://g.co/gemini/share/e6b166112e88
extends Control

@onready var click_player: AudioStreamPlayer = $ClickPlayer
@onready var metronome_timer: Timer = $MetronomeTimer
@onready var bpm_label: Label = $VBoxContainer/HFlowContainer/BPM_Label
@onready var bpm_slider: HSlider = $VBoxContainer/HFlowContainer/BPM_Slider
@onready var rhythm_label: Label = $VBoxContainer/HFlowContainer/Rhythm_Label
@onready var rhythm_option_button: OptionButton = $VBoxContainer/HFlowContainer/Rhythm_OptionButton
@onready var start_stop_button: Button = $VBoxContainer/HFlowContainer/StartStopButton

var is_running: bool = false
var current_bpm: int = 120
var beat_count: int = 0
var beats_per_measure: int = 4
var measure_types: Dictionary = {
	"4/4": 4,
	"3/4": 3,
	"2/4": 2,
}

func _ready() -> void:
	bpm_slider.value = current_bpm
	update_bpm_label()
	update_rhythm_label()
	update_metronome_timer_wait_time()

func update_metronome_timer_wait_time() -> void:
	metronome_timer.wait_time = 60.0 / float(current_bpm)

func update_bpm_label() -> void:
	bpm_label.text = "BPM: %d" % current_bpm

func update_rhythm_label() -> void:
	var current_rhythm_text: String = ""
	for key in measure_types:
		if measure_types[key] == beats_per_measure:
			current_rhythm_text = key
			break
	rhythm_label.text = "Rhythm: %s" % current_rhythm_text

func _on_MetronomeTimer_timeout() -> void:
	beat_count += 1
	if beat_count > beats_per_measure:
		beat_count = 1
	click_player.play()

func _on_BPM_Slider_value_changed(value: float) -> void:
	current_bpm = int(value)
	update_bpm_label()
	update_metronome_timer_wait_time()
	if is_running:
		metronome_timer.start()

func _on_Rhythm_OptionButton_item_selected(index: int) -> void:
	var selected_rhythm_text: String = rhythm_option_button.get_item_text(index)
	if measure_types.has(selected_rhythm_text):
		beats_per_measure = measure_types[selected_rhythm_text]
		update_rhythm_label()
		beat_count = 0

func _on_StartStopButton_pressed() -> void:
	is_running = not is_running
	if is_running:
		metronome_timer.start()
		start_stop_button.text = "Stop Metronome"
		beat_count = 0
	else:
		metronome_timer.stop()
		start_stop_button.text = "Start Metronome"
		beat_count = 0
