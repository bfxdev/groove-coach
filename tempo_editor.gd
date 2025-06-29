extends Control

# Initialization variables

## Default value of the tempo at first start
@export var default_tempo : int = 80

## Minimum tempo that can be set by the user
@export var min_tempo : int = 40

## Maximum tempo that can be set by the user
@export var max_tempo : int = 220

# User interface elements
@onready var tempo_value : LineEdit = %TempoValue
@onready var tempo_slider : HSlider = %TempoSlider

## Global tempo value in Beats Per Minute
var tempo:int

## Sets the tempo to the [member TempoEditor.default_value] and then updates the GUI
func _ready() -> void:
	tempo = default_tempo
	tempo_slider.min_value = min_tempo
	tempo_slider.max_value = max_tempo
	_update_user_interface(tempo)

func _update_user_interface(value:int) -> void:
	# Ensures the current tempo is in the range
	tempo = max(min_tempo, min(max_tempo,value))

	# Updates GUI elements
	tempo_slider.value = tempo
	tempo_value.set_text(str(tempo))

func _on_tempo_slider_value_changed(value: float) -> void:
	_update_user_interface(int(value))

func _on_tempo_plus_pressed() -> void:
	@warning_ignore("integer_division")
	_update_user_interface(5*int((tempo+5)/5))

func _on_tempo_minus_pressed() -> void:
	@warning_ignore("integer_division")
	_update_user_interface(5*int((tempo-5)/5))

func _on_tempo_value_text_changed(new_text: String) -> void:
	var new_value: int = int(new_text)
	_update_user_interface(new_value)

func _on_tempo_value_focus_exited() -> void:
	_update_user_interface(int(tempo_value.get_text()))

func _on_tempo_value_text_submitted(new_text: String) -> void:
	var new_value: int = int(new_text)
	_update_user_interface(new_value)
