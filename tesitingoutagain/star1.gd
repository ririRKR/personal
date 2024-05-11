extends Sprite2D

var dragging = false
var mouseClicked = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if dragging:
		position = get_global_mouse_position()
		set_position(position)

func _input(event):
	if event.is_action_pressed("UI_Click"):
		mouseClicked = true

func _on_Area2D_mouse_button_pressed(button_index):
	print("entered")
	if button_index == MOUSE_BUTTON_LEFT: 
		dragging = true
	

func _on_Area2D_mouse_button_released(button_index):
	if button_index == MOUSE_BUTTON_LEFT: 
		print("exited")
		dragging = false


