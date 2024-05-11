extends Node2D

var dragging = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if dragging:
		position = get_global_mouse_position()
	


func _on_area_2d_mouse_entered():
	print("entered")
	if Input.is_action_pressed("UI_Click"):
		dragging = true


func _on_area_2d_mouse_exited():
	print("exited")
	if not Input.is_action_pressed("UI_Click"):
		dragging = false

