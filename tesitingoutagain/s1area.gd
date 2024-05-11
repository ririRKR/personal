extends Area2D

var dragging = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			if event.is_action_pressed("UI_Click"):
				dragging = true
		else: dragging = false
	if dragging:
		get_parent().position = get_global_mouse_position()




	#if event is InputEventMouseButton and event.pressed and event.is_action_pressed("UI_Click"):  # Check for left mouse click
		#print("Area2D clicked!")
		
