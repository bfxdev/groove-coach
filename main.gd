extends Control

@onready var tempo_editor = %TempoEditor

func _ready() -> void:
	print("Current tempo:", tempo_editor.tempo)


func _on_resized() -> void:
	var screen_scale = DisplayServer.screen_get_scale()
	print("Screen scale: ", screen_scale)
	var screen_size = DisplayServer.screen_get_size()
	print("Screen size: ", screen_size)
	var usable_screen_size = DisplayServer.screen_get_usable_rect().size
	print("Usable screen size: ", usable_screen_size)
	var screen_dpi = DisplayServer.screen_get_dpi()
	print("Screen DPI: ", screen_dpi)

	if screen_dpi > 100:
		get_window().content_scale_factor = screen_dpi/150.0
