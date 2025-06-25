extends Control

# Scene variables
var tempo : int = 80
var min_tempo : int = 20
var max_tempo : int = 320

# User interface elements
@onready var editable_value : LineEdit = %EditableValue
@onready var slider : HSlider = %Slider

func _update_user_interface(value:int) -> void:
	
	# Ensures the current tempo is in the range
	tempo = max(min_tempo, min(max_tempo,value))

	# Updates GUI elements
	slider.value = tempo
	editable_value.set_text(str(tempo))

func _ready() -> void:
	_update_user_interface(tempo)

func _on_slider_value_changed(value: float) -> void:
	_update_user_interface(int(value))

func _on_plus_5_pressed() -> void:
	@warning_ignore("integer_division")
	_update_user_interface(5*int((tempo+5)/5))

func _on_minus_5_pressed() -> void:
	@warning_ignore("integer_division")
	_update_user_interface(5*int((tempo-5)/5))

func _on_editable_value_text_changed(new_text: String) -> void:
	var new_value: int = int(new_text)
	_update_user_interface(new_value)

func _on_editable_value_focus_exited() -> void:
	_update_user_interface(int(editable_value.get_text()))

func _on_editable_value_text_submitted(new_text: String) -> void:
	var new_value: int = int(new_text)
	_update_user_interface(new_value)
