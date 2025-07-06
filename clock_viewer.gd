extends Control

class_name ClockViewer

@onready var canvas:Node2D = %Canvas
@onready var panel:PanelContainer = %Panel

@export var note_scene:PackedScene


var panel_size:Vector2 = Vector2(400,400)
var notes:Array[Note] = []

func _ready():
	panel_size = panel.size
	_spawn_notes()

func _spawn_notes() -> void:
	for i in range(10):
		var new_note = note_scene.instantiate()
		canvas.add_child(new_note)
		notes.append(new_note)

	_place_notes()

	for note in notes:
		note.show()

func _place_notes() -> void:
	var i = 0
	for note in notes:
		note.position = Vector2(cos(i) * 0.1 * panel_size.x, sin(i) * 0.1 * panel_size.y)
		i += 1

func _on_resized() -> void:
	if panel != null:
		panel_size = panel.size
	_place_notes()
