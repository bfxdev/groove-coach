extends Control

class_name ClockViewer

@onready var canvas = %Canvas
#@onready var panel = %Panel

@export var note_scene:PackedScene


var canvas_size:Vector2 = Vector2(400,400)
var notes:Array[Note] = []

func _ready():
	canvas_size = canvas.size
	_spawn_notes()

func _spawn_notes() -> void:
	for i in range(50):
		var new_note = note_scene.instantiate()
		canvas.add_child(new_note)
		notes.append(new_note)

	_place_notes()

	for note in notes:
		note.show()

func _place_notes() -> void:
	var i = 0
	for note in notes:
		note.position = canvas_size/2 + canvas_size.rotated(i)/4
		i += 1

func _process(delta: float) -> void:
	canvas.rotation += 0.01

func _on_resized() -> void:
	print("Size of main container:", self.size)
	if canvas != null:
		canvas_size = canvas.size
		print("New canvas size:", canvas_size)
		canvas.pivot_offset = canvas_size/2
	_place_notes()
