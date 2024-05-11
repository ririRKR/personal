extends Area2D

var dragging = false
var mouse_inside_area = false
var done = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _input(event):
	#print("Mouse Pos:", get_global_mouse_position())
	if event is InputEventMouseButton and not done:
		if event.pressed:
			if event.is_action_pressed("UI_Click") and mouse_inside_area:
				dragging = true
		else: dragging = false
	if dragging:
		get_parent().position = get_global_mouse_position()
		#print("dragging")

func _on_mouse_entered():
	mouse_inside_area = true

func _on_mouse_exited():
	mouse_inside_area = false


	#if event is InputEventMouseButton and event.pressed and event.is_action_pressed("UI_Click"):  # Check for left mouse click
		#print("Area2D clicked!")
		
